/*global post:true*/
const scribble = require('scribbletune');

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

  const chords = useCustomChords
    ? customChords
        .split('-')
        .map(chord => chord + '-' + scale.split(' ')[0].replace(/\D/, ''))
        .join(' ')
    : scribble.getChordsByProgression(scale, prog);

  scribble.max(
    scribble.clip({
      notes: arp ? scribble.arp(chords) : chords,
      pattern: repeat(pattern, patternRepeat),
      subdiv,
      sizzle,
      sizzleReps
    })
  );
};
