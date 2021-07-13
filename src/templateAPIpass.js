/*global post:true LiveAPI Dict outlet*/
const scribble = require('scribbletune/max');

//This function imports Scribbletune clip from an M4L dictionary
function getClip(dictName) {
  var d = new Dict(dictName);
  var innerDict = d.get('scribbleObjects');

  if (innerDict.length === undefined) {
    // If dict has only 1 item in array, it isnt seen as an array even though syntax is the same, hence this if statement where we convert it to array
    innerDict = [];
    innerDict.push(d.get('scribbleObjects'));
  }

  var clip = [];

  //After importing the dictionary, we know that we have defined the outter key is "scribbleObjects" and the inner keys are "note" "length" "level".
  for (var i of innerDict) {
    var noteA = i.get('note');

    // The problem with import is that "note" should be an array
    // It can be `null` (in cases of hyphens) and `string` in case of non-chords
    if (noteA && !Array.isArray(noteA)) {
      noteA = [i.get('note')];
    }

    clip.push({
      note: noteA,
      length: i.get('length'),
      level: i.get('level'),
    });
  }

  return clip;
}

module.exports = function() {
  const clip = getClip('clip1');

  const oap = new LiveAPI('live_set view detail_clip');

  scribble.max(clip, oap ? 'live_set view detail_clip' : 'live_set view highlighted_clip_slot clip');
};
