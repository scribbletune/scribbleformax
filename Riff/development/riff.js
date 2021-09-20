const maxApi = require('max-api');
const scribble = require('scribbletune');
const jsmidgen = require('jsmidgen');

const scribbleClipToMidiSteps = scribbleClip => {
  let startTime = 0;
  let endTime = 0;
  const liveFormat = [];
  for (const step of scribbleClip) {
    endTime += step.length;

    if (step.note) {
      for (let noteInt = 0; noteInt < step.note.length; noteInt++) {
        liveFormat.push({
          pitch: jsmidgen.Util.midiPitchFromNote(step.note[noteInt]),
          start_time: startTime / 512,
          duration: (endTime - startTime) / 512,
          velocity: step.level,
          probability: 1,
          velocity_deviation: 1,
          release_velocity: 64,
          mute: 0,
        });
      }
    }

    startTime += step.length;
  }

  const totalDuration = scribbleClip.reduce((duration, step) => (duration = duration + step.length), 0) / 512;

  return { liveFormat, totalDuration };
};

maxApi.addHandler('makeClip', async () => {
  const parameters = await maxApi.getDict('parameters'); // we fetch the main dictionary "parameters"

  // we retrieve the parameters
  let {
    scale = 'C3 phrygian',
    pattern = 'x-xRx_RR',
    ab = 'ABC',
    subdiv = 0,
    sizzle,
    sizzleReps = 1,
    useScaleNotesForR,
    repeatPattern,
  } = parameters;

  // The Riff logic comes here
  sizzle = sizzle === 'none' ? false : sizzle;
  useScaleNotesForR = !!parseInt(useScaleNotesForR);
  repeatPattern = parseInt(repeatPattern);
  const mode = scribble.scale(scale);

  // A clips are riffs with the root note used as `x` and randomly selected notes from the rest of the scale for `R`
  const clipA = scribble.clip({
    notes: mode[0],
    pattern: pattern.repeat(repeatPattern),
    randomNotes: useScaleNotesForR ? mode.slice(1) : null,
    subdiv,
    sizzle,
    sizzleReps,
  });

  // B clips are riffs similar to A clips but the second note in the scale used as `x` and randomly selected notes from the rest of the scale for `R`
  const clipB = scribble.clip({
    notes: mode[1],
    pattern: pattern.repeat(repeatPattern),
    randomNotes: useScaleNotesForR ? mode.slice(1) : null,
    subdiv,
    sizzle,
    sizzleReps,
  });

  // C clips generate A and B clips and then combine them as -> A + B + first half of A + first half of B + second half of A + second half of B
  const clipC = [
    ...clipA.slice(0, Math.floor(clipA.length / 2)),
    ...clipB.slice(0, Math.floor(clipB.length / 2)),
    ...clipA.slice(Math.floor(clipA.length / 2)),
    ...clipB.slice(Math.floor(clipA.length / 2)),
  ];

  const clip = ab.split('').reduce((acc, b) => {
    switch (b) {
      case 'A':
        acc = [...acc, ...clipA];
        break;

      case 'B':
        acc = [...acc, ...clipB];
        break;

      case 'C':
        acc = [...acc, ...clipC];
        break;
    }

    return acc;
  }, []);

  clip.forEach((note, idx) => {
    if (idx === 0) return;

    if (note.note === clip[idx - 1].note) {
      const updatedNote = mode[Math.round(Math.random() * (mode.length - 1))];
      if (updatedNote === note.note) {
        maxApi.post(`Previous note: ${clip[idx - 1].note}, Current note: ${note.note}, Update note: ${updatedNote}`);
      }
      note.note[0] = updatedNote;
    }
  });

  const midiSteps = scribbleClipToMidiSteps(clip);

  // Set the generated clip inside a dict object for api.js to consume
  // apiClip is already a dict object created in the amxd file
  await maxApi.setDict('apiClip', {
    notes: midiSteps.liveFormat,
    totalDuration: midiSteps.totalDuration,
  });

  maxApi.outlet('bang'); // we send a bang out to let the rest of the patch know to do its thing
});
