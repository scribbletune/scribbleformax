/*global post:true LiveAPI*/
const scribble = require('scribbletune/max');

const repeat = (str, count = 1) => {
  let replacedStr = '';
  for (let i = 0; i < count; i++) {
    replacedStr += str;
  }
  return replacedStr;
};

module.exports = function(commaSeparatedInput) {
  post('hello from v4 in riff');
  post('\n');
  post(commaSeparatedInput);
  post('\n');
  const data = commaSeparatedInput.split(',');
  const scale = data[0] || 'C3 phrygian';
  const pattern = data[1] || 'x-xRx_RR';
  const ab = data[2] || 'AAAB'; // AAAB AB A AABB BAAA ABA BAB AABC ABBC ABCC ABC BAC CBA
  const subdiv = data[3] || 0;
  const sizzle = data[4] === 'none' ? false : data[4];
  const sizzleReps = data[5] || 1;
  const useScaleNotesForR = !!parseInt(data[6]);
  const repeatPattern = parseInt(data[7]);
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

  // Check if a clip is selected and open in the detail view [useful for Arrangement View]
  const o = new LiveAPI('live_set view detail_clip');

  // If `o` doesnt exist then go for a selected clip in the Session View
  scribble.max(
    clip,
    o ? 'live_set view detail_clip' : 'live_set view highlighted_clip_slot clip'
  );
};
