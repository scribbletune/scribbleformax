/*global post:true*/
const scribble = require('scribbletune');

module.exports = function(scaleAndPattern) {
  post(scaleAndPattern);
  post('\n');
  const scaleAndPatternArr = scaleAndPattern.split(',');
  const scale = scaleAndPatternArr[0] || 'C3 phrygian';
  const pattern = scaleAndPatternArr[1] || 'x-xR-xRR';
  post(scale);
  post('\n');
  post(pattern);
  post('\n');

  const mode = scribble.scale(scale);
  const clipA = scribble.clip({
    notes: mode[0],
    pattern,
    randomNotes: mode.slice(2),
    sizzle: true
  });

  const clipB = scribble.clip({
    notes: mode[0],
    pattern,
    randomNotes: mode.slice(3)
  });
  const clip = [...clipA, ...clipA, ...clipA, ...clipB];

  scribble.max(clip);
};
