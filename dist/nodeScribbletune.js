const maxApi = require('max-api');
const scribble = require('scribbletune');

maxApi.addHandler("makeClip", () => { //we create an event handler function to contain the script. For more information on how this works, see Node for Max documantation https://docs.cycling74.com/nodeformax/api/
    
    const constructChords = (async () => {
        const parameters = await maxApi.getDict("parameters") //we fetch the main dictionary "parameters"
        
        const notes = parameters.notes //we retrieve the parameters
        const pattern = parameters.pattern
        
        const clip = scribble.clip({ //we make the clip with Scribbletune
            notes,
            pattern,
          });
        
        await ( //we send the Scribbletune clip to the other dictionary
            maxApi.setDict("clip1", {
                "scribbleObjects": clip
            })
        )

        maxApi.outlet("bang") //we send a bang out to let the rest of the patch know to do its thing

    })()

});