/*global post:true*/
const scribble = require('scribbletune');

const sizzleDict = {
  none: false,
  sin: 'sin',
  cos: 'cos',
  saw: 'rampUp',
  'saw-inv': 'rampDown'
};

module.exports = function(scalePatternAbSubdiv) {
  post(scalePatternAbSubdiv);
  post('\n');
  const scalePatternAbSubdivArr = scalePatternAbSubdiv.split(',');
  const scale = scalePatternAbSubdivArr[0] || 'C3 phrygian';
  const pattern = scalePatternAbSubdivArr[1] || 'x-xRx_RR';
  const ab = scalePatternAbSubdivArr[2] || 'AAAB'; // AAAB AB A AABB BAAA ABA BAB AABC ABBC ABCC ABC BAC CBA
  const subdiv = scalePatternAbSubdivArr[3] || 0;
  const sizzle = sizzleDict[scalePatternAbSubdivArr[4] || 'sin'];
  const sizzleReps = scalePatternAbSubdivArr[5] || 1;
  post(scale);
  post('\n');
  post(pattern);
  post('\n');
  post(sizzle);
  post('\n');
  post(sizzleReps);
  post('\n');
  post('generate');

  const mode = scribble.scale(scale);
  const clipA = scribble.clip({
    notes: mode[0],
    pattern,
    randomNotes: mode.slice(1),
    subdiv,
    sizzle,
    sizzleReps
  });

  const clipB = scribble.clip({
    notes: mode[0],
    pattern,
    randomNotes: mode.slice(2),
    subdiv,
    sizzle,
    sizzleReps
  });

  const clipC = scribble.clip({
    notes: mode[1],
    pattern,
    randomNotes: mode.slice(3),
    subdiv,
    sizzle,
    sizzleReps
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

  scribble.max(clip);
};
