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

local flexity = {
	contentType			= "trainComposition",
	contentName			= "Flexity",

	title           = "Flexity (AI)",
	author				  = "TwistedGate",

	isMultipleUnit	= true,
	numberPoolMin		= 1000,
	numberPoolMax		= 1024,
	numberPool			= "Berlin",

	compatibleMaps 	= { "Berlin" },
	vehicleGroup 		= "Berlin_A3L92_Group",
	
	vehicles				= {
		utils:wagen(utils.ftype.flexity["A"], true, 123),
	},
}
g_contentManager:addContent(flexity)

local testGi = {
	contentType			= "trainComposition",
	contentName			= "GI1E",

	title						= "GI1E (AI)",
	author					= "TwistedGate",

	isMultipleUnit	= true,
	numberPoolMin		= 1000,
	numberPoolMax		= 1024,
	numberPool			= "Berlin",

	compatibleMaps	= { "Berlin" },
	vehicleGroup		= "Berlin_A3L92_Group",

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

	title						= "BR481 (AI)",
	author					= "TwistedGate",

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

local br474 = {
	contentType			= "trainComposition",
	contentName			= "BR474",
	
	title						= "BR474 (AI)",
	author					= "TwistedGate",
	
	compatibleMaps	= { "Hamburg" },
	vehicleGroup		= "Hamburg_DT5.2_Group",
	
	vehicles				= {
		utils:wagen(utils.ftype.br474["A"], true, 123),
		utils:wagen(utils.ftype.br474["B"], true, 124),
		utils:wagen(utils.ftype.br474["B"], false, 125),
		utils:wagen(utils.ftype.br474["A"], false, 126),
	},
}
g_contentManager:addContent(br474)