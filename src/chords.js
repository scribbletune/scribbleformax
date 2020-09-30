/*global post:true LiveAPI*/
require('./polyfill');
const scribble = require('scribbletune');

const rand = (upper) => Math.round(Math.random() * upper);
const sampleSize = (arr, count) => {
  const a = [];
  const newArr = [...arr];
  while (count) {
    a.push(newArr.splice(rand(newArr.length - 1), 1)[0]);
    count--;
  }

  return a;
};

// ES5 doesnt support String.replace hence the transpiled version doesn't recognize it
const replace = (str, char = /–|-/, replaceChar = ' ') => {
  let replacedStr = '';
  for (let i = 0; i < str.length; i++) {
    if (str[i].match(char)) {
      replacedStr += replaceChar;
    } else {
      replacedStr += str[i];
    }
  }
  return replacedStr;
};

// ES5 doesnt support String.repeat hence the transpiled version doesn't recognize it
const repeat = (str, count = 1) => {
  let replacedStr = '';
  for (let i = 0; i < count; i++) {
    replacedStr += str;
  }
  return replacedStr;
};

module.exports = function(commaSeparatedInput) {
  post(commaSeparatedInput);
  post('\n');
  const data = commaSeparatedInput.split(',');
  const scale = data[0] || 'C3 major';
  const prog = replace(data[1] || 'I–vi–IV–V');
  const pattern = data[2] || 'xxxx';
  const patternRepeat = +data[3] || 4;
  const subdiv = data[4] || '1m';
  const sizzle = data[5] === 'none' ? false : data[5];
  const sizzleReps = +data[6] || 1;
  const arp = +data[7] || 0;
  const useCustomChords = +data[8] || 0;
  const customChords = data[9] || 'CM FM Am GM';

  let chords = 'Dm-2 GM-2';

  if (useCustomChords) {
    chords = customChords
      .split('-')
      .map((chord) => chord + '-' + scale.split(' ')[0].replace(/\D/, ''))
      .join(' ');
  } else {
    if (prog === 'random chords') {
      const setOfNotes = scribble.scale(scale);
      const count = replace(repeat(pattern, patternRepeat), /[^x]/g, '').length;

      const notes = [];
      for (let i = 0; i < count; i++) {
        notes.push(sampleSize([...setOfNotes], 3));
      }
      chords = notes;
    } else {
      chords = scribble.getChordsByProgression(scale, prog);
    }
  }

  // Check if a clip is selected and open in the detail view [useful for Arrangement View]
  const o = new LiveAPI('live_set view detail_clip');

  // If `o` doesnt exist then go for a selected clip in the Session View
  scribble.max(
    scribble.clip({
      // arp is currently not available on chords expressed as notes arrays
      notes: prog !== 'random chords' && arp ? scribble.arp(chords) : chords,
      pattern: repeat(pattern, patternRepeat),
      subdiv,
      sizzle,
      sizzleReps,
    }),
    o ? 'live_set view detail_clip' : 'live_set view highlighted_clip_slot clip'
  );
};
