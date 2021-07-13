/*global post:true LiveAPI Dict outlet*/
const scribble = require('scribbletune/max');

// This function imports Scribbletune clip from an M4L dictionary called `apiClip`
function getClip() {
  var d = new Dict('apiClip');
  var scribbledClipArr = d.get('scribbledClip');

  if (scribbledClipArr.length === undefined) {
    // If dict has only 1 item in array, it isnt seen as an array even though syntax is the same
    scribbledClipArr = [];
    scribbledClipArr.push(d.get('scribbledClip'));
  }

  var clip = [];

  // After importing the dictionary, we know that the outer key is "scribbledClip" and the inner keys are "note" "length" "level".
  for (var noteObject of scribbledClipArr) {
    var noteA = noteObject.get('note');

    // The problem with import is that "note" should be an array
    // It can be `null` (in cases of hyphens) and `string` in case of non-chords
    if (noteA && !Array.isArray(noteA)) {
      noteA = [noteObject.get('note')];
    }

    clip.push({
      note: noteA,
      length: noteObject.get('length'),
      level: noteObject.get('level'),
    });
  }

  return clip;
}

module.exports = function() {
  const clip = getClip();
  const oap = new LiveAPI('live_set view detail_clip');
  scribble.max(clip, oap ? 'live_set view detail_clip' : 'live_set view highlighted_clip_slot clip');
};
