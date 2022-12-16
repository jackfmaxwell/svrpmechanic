Config = {}
Config.DebugPoly = true

--
--job needs job things
    -- clockin
    -- stash
    -- bill spot

--[[
Materials:

Aluminum 
Steel
Glass
Plastic
Scrap Metal 

Mechanics need ability to:
- repair cars
    -- Need to repair / body / engine / specific parts -- need a wrench needed for repairs
    -- body and engine repaired with materials
    -- bring car into repair bay, third eye car to "set into bay" (puts into exact position sets up zones for specific parts)
            -- body third eye anywhere and repair with materials (progress bar)
            -- engine third eye hood, pops hood, repair with materials (progress bar)
            -- specific parts can break (brakes, drive shaft, suspension, oil pan)
- add mods
    -- bring into bay, alt eye to select add mods
        -- clean and descriptive menu showing mods
        --anyone can do this, clicking confirm gives a receipt item
    -- mechanic takes a receipt and applies all the mods to the car with progress bar
    -- mechanic then can charge the amount written on the reciept

- diagnose damage / install parts
    -- diagnosing: get in car use dianogistic plug in shows menu with what can be installed and what is broken
    -- parts are an inventory item that you third eye on car open menu "install part" select which part

- craft parts
    -- have materials in stash or in inv, then craft part
- cleaning kit for cars

Tuner specific:
- Secret craft area for: boosting laptops, tracking disablers, nos, bulletproof tires
- Can do stancing and drift kit installs
-----------------------------------------------
- how to integrate things like engine hoist model and engine model when installing engine
]]

Config.HayesMechanic = {
    jobname = "mechanic",
    locations = {
        ["clockin"] = vector3(-1427.62, -457.72, 35.23),
        repairBay = {
            vector3(),
        },
        modBay = {
            vector3(),
        },
    },
}

Config.OttosMechanic = {
    jobname = "tuner",
    locations = {
        ["clockin"] = vector3(),
    },
}

Config.TunerMachanic = {
    jobname = "tuner",
    locations = {
        ["clockin"] = vector3(),
    },
}

/**
['diagnostictool'] 					 	= {['name'] = 'diagnostictool', 					['label'] = 'Vehicle Diagnostic', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = '.png', 			['unique'] = true, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'A tool used to diganose system errors on vehicles.'},
['wrench'] 					 	        = {['name'] = 'wrench', 							['label'] = 'Mechanic Wrench', 					['weight'] = 5000, 		['type'] = 'item', 		['image'] = '.png', 			['unique'] = true, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Used to complete repairs on vehicles.'},
['cleaningkit'] 					 	= {['name'] = 'cleaningkit', 						['label'] = 'Cleaning Kit', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = '.png', 			['unique'] = true, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Kit for washing cars'},
['reciept'] 					 	    = {['name'] = 'reciept', 							['label'] = 'Car Upgrade Receipt', 				['weight'] = 500, 		['type'] = 'item', 		['image'] = '.png', 			['unique'] = true, 	['useable'] = false, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Reciept detailing what needs to be upgraded'},

['aluminum'] 					 	    = {['name'] = 'aluminum', 							['label'] = 'Aluminum', 				        ['weight'] = 100, 		['type'] = 'item', 		['image'] = '.png', 			['unique'] = true, 	['useable'] = false, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = ''},
['steel'] 					 	        = {['name'] = 'steel', 							    ['label'] = 'Steel', 				        ['weight'] = 100, 		['type'] = 'item', 		['image'] = '.png', 			['unique'] = true, 	['useable'] = false, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = ''},
['glass'] 					 	        = {['name'] = 'glass', 							    ['label'] = 'Glass', 				        ['weight'] = 100, 		['type'] = 'item', 		['image'] = '.png', 			['unique'] = true, 	['useable'] = false, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = ''},
['plastic'] 					 	    = {['name'] = 'plastic', 							['label'] = 'Plastic', 				        ['weight'] = 100, 		['type'] = 'item', 		['image'] = '.png', 			['unique'] = true, 	['useable'] = false, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = ''},
['scrapmetal'] 					 	    = {['name'] = 'scrapmetal', 						['label'] = 'Scrap Metal', 				        ['weight'] = 100, 		['type'] = 'item', 		['image'] = '.png', 			['unique'] = true, 	['useable'] = false, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = ''},
*/