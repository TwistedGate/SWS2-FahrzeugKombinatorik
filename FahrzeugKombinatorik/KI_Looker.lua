--[[

	Warnung!
	Die sind nur zum anschauen gedacht und sind nicht Fahrbar!
	
	Sie solten nirgendwo drangeklemmt werden da dies zur unspielbarkeit führt.
	(~6FPS Lag, Fahrzeuge fahren nicht, Kamera und Charakter können nicht bewegt werden, usw.)
	
	------------------------------------------------------------------------------------
	
	Warning!
	These are here just to be able to spawn them in-game to get a closer look at them.
	
	Do not attach them to any running vehicle, it will cause immense problems in-game.
	(~6FPS Lag, Vehicles are undrivable, Camera and Character can not be moved, etc.)
	
--]]

local testGi = {
	contentType			= "trainComposition",
	contentName			= "GI1E",

	title           = "GI1E",
	author				  = "TwistedGate",

	isMultipleUnit	= true,
	numberPoolMin		= 1000,
	numberPoolMax		= 1024,
	numberPool			= "Berlin",

	compatibleMaps 	= { "Berlin" },
	vehicleGroup 		= "Berlin_A3L92_Group",

	vehicles				= {
		utils:wagen(utils.ftype.gi1e["A"], true, 123),
		utils:wagen(utils.ftype.gi1e["B"], false, 124),
		utils:wagen(utils.ftype.gi1e["B"], true, 125),
		utils:wagen(utils.ftype.gi1e["A"], false, 126),
	},
}
g_contentManager:addContent(testGi)

local testBR481 = {
	contentType			= "trainComposition",
	contentName			= "BR481",

	title           = "BR481",
	author				  = "TwistedGate",

	isMultipleUnit	= true,
	numberPoolMin		= 1000,
	numberPoolMax		= 1024,
	numberPool			= "Berlin",

	compatibleMaps 	= { "Berlin" },
	vehicleGroup 		= "Berlin_A3L92_Group",

	vehicles				= {
		utils:wagen(utils.ftype.br481["A"], true, 123),
		utils:wagen(utils.ftype.br481["B"], false, 124),
		utils:wagen(utils.ftype.br481["B"], true, 125),
		utils:wagen(utils.ftype.br481["A"], false, 126),
	},
}
g_contentManager:addContent(testBR481)