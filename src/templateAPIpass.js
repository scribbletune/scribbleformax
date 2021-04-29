/*global post:true LiveAPI Dict outlet*/
const scribble = require('scribbletune/max');


//This function imports Scribbletune clip from an M4L dictionary
function getClip(dictName) {
    var d = new Dict(dictName);
    var innerDict = d.get("scribbleObjects");

    if (innerDict.length === undefined) { // If dict has only 1 item in array, it isnt seen as an array even though syntax is the same, hence this if statement where we convert it to array
        innerDict = []
        innerDict.push(d.get("scribbleObjects"))
    }

    var clip = []

    //After importing the dictionary, we know that we have defined the outter key is "scribbleObjects" and the inner keys are "note" "length" "level".
    for (var i = 0; i < innerDict.length; i++) {
        var noteA = innerDict[i].get("note")

        //The problem with import is that "note" should be in array unless null. Its only in an array when its a chord, hence the if else statement
        if (Array.isArray(noteA) === false && noteA !== null) { 
            var noteB = []
            noteB.push(noteA)
            clip.push(
                {
                    note: noteB,
                    length: innerDict[i].get("length"),
                    level: innerDict[i].get("level")
                })
        } else {

            clip.push(
                {
                    note: noteA,
                    length: innerDict[i].get("length"),
                    level: innerDict[i].get("level")
                })
        }
    }

    return clip;

}

module.exports = function () {
    const clip = getClip("clip1")

    const oap = new LiveAPI('live_set view detail_clip');

    scribble.max(
        clip,
        oap ? 'live_set view detail_clip' : 'live_set view highlighted_clip_slot clip'
    );

};

