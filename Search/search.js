inlets = 2;

function bang() {
  post('ready', '\n');
}

function search(channelName) {
  post(channelName, '\n');

  var api = new LiveAPI('live_set');
  var totalTracks = api.getcount('tracks'); // children & properties can be obtained via get
  for (var i = 0; i < totalTracks; i++) {
    api.path = 'live_set tracks ' + i;
    if (api.get('name').indexOf(channelName) > -1) {
      var view = new LiveAPI('live_set view');
      view.set('selected_track', 'id', api.id);
    }
  }
}
