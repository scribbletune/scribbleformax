// gets dict with the clip to pass
function getDict(dictName) {
  var d = new Dict(dictName);
  var notesObject = JSON.parse(d.stringify());

  return notesObject;
}

// clears a clip passes the dict using Ableton Live 10 (or lower) api
function liveTenOrLower(clip, dict) {
  var inner = dict.notes;
  clip.call('remove_notes', 0, 1, 258, 127); // from_time, from_pitch, time_span, pitch_span
  clip.call('set_notes');
  clip.call('notes', inner.length);
  for (var step = 0; step < inner.length; step++) {
    clip.call(
      'note',
      inner[step].pitch,
      inner[step].start_time.toFixed(6).toString(),
      inner[step].duration.toFixed(6).toString(),
      inner[step].velocity,
      0
    );
  }
  clip.call('done');
}

// clears a clip passes the dict using Ableton Live 11 api
function liveEleven(clip, dict) {
  clip.call('remove_notes_extended', 1, 127, 0, 258); // from_pitch, pitch_span, from_time, time_span
  clip.call('add_new_notes', dict);
}

// returns whats selected
function clipOrSlot() {
  var clipToSelect = new LiveAPI('live_set view detail_clip');
  if (clipToSelect) {
    return clipToSelect;
  } else {
    return new LiveAPI('live_set view highlighted_clip_slot clip');
  }
}

// passes notes down to the Live API based on the received name of a dict and active Live version
function setNotes(dictName) {
  var clip = clipOrSlot();
  var dict = getDict(dictName);

  clip.set('loop_end', dict.totalDuration);

  var live = new LiveAPI('live_app');
  if (live.call('get_major_version') === 11) {
    liveEleven(clip, dict);
  } else {
    liveTenOrLower(clip, dict);
  }
}
