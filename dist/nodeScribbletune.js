const maxApi = require('max-api');
const scribble = require('scribbletune');

maxApi.addHandler("makeClip", () => {

    const constructChords = (async () => {
        const parameters = await maxApi.getDict("parameters") //we fetch the main dictionary "parameters"

        const rootNote = full.rootNote
        const mode = full.mode
        const seventh = full.seventh
        const chordNotation = full.chordNotation 
        const repeatChords = full.repeatChords
        const pattern = full.pattern
        const subdiv = full.subdiv
        const randomAssist = full.randomAssist
        const chordMap = lib.translateChordMap(full.chordMap) 
        const sizzle = full.sizzle 
        const advChords = full.advChords
        const open = full.open 
        const voicing = full.voicing 
        const octave = full.octave 
        const bassNote = full.bassNote 
        const splitChop = full.splitChop 
        const splitter = full.splitter
        
        const chordsMade = lib.makeChords(rootNote, mode, seventh, chordNotation, repeatChords, pattern, subdiv, randomAssist, chordMap, sizzle, advChords, open, voicing, octave, bassNote, splitChop, splitter)  //we make the Scribbletune clip and chord names
        const clip = chordsMade[0]
        const names = chordsMade[1]
        
        await (
            maxApi.setDict("clip", {
                "scribbleObjects": clip
            })
        )

        maxApi.outlet("bang") //We send a bang out to let the rest of the patch know to do its thing

    })()

});