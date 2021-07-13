const maxApi = require('max-api');
const scribble = require('scribbletune');

maxApi.post('hello from v4 in dist/riff apiClip');

const repeat = (str, count = 1) => {
  let replacedStr = '';
  for (let i = 0; i < count; i++) {
    replacedStr += str;
  }
  return replacedStr;
};

maxApi.addHandler('makeClip', async () => {
  const parameters = await maxApi.getDict('parameters'); //we fetch the main dictionary "parameters"

  //we retrieve the parameters
  let {
    scale = 'C3 phrygian',
    pattern = 'x-xRx_RR',
    ab = 'AAAB',
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

  const clipA = scribble.clip({
    notes: mode[0],
    pattern: repeat(pattern, repeatPattern),
    randomNotes: useScaleNotesForR ? mode.slice(1) : null,
    subdiv,
    sizzle,
    sizzleReps,
  });

  const clipB = scribble.clip({
    notes: mode[0],
    pattern: repeat(pattern, repeatPattern),
    randomNotes: useScaleNotesForR ? mode.slice(2) : null,
    subdiv,
    sizzle,
    sizzleReps,
  });

  const clipC = scribble.clip({
    notes: mode[1],
    pattern: repeat(pattern, repeatPattern),
    randomNotes: useScaleNotesForR ? mode.slice(3) : null,
    subdiv,
    sizzle,
    sizzleReps,
  });

  const clip = (() => {
    // AAAB AB A AABB BAAA ABA BAB AABC ABBC ABCC ABC BAC CBA
    return ab.split('').reduce((acc, b) => {
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
  })();

  // Set the generated clip inside a dict object for api.js to consume
  await maxApi.setDict('apiClip', {
    scribbledClip: clip,
  });

  maxApi.outlet('bang'); // we send a bang out to let the rest of the patch know to do its thing
});
