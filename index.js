/*global post:true*/
const scribble = require('scribbletune');
const pattern = 'x-xR-xRR';

module.exports = function(scale) {
  post(scale);
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
