--[[

	Jedes fahrzeug was den Hk an der Front hat.
	
	-------------------------------------------
	
	Any vehicle that has the Hk as the Head.

--]]

local hk_8er = {
	contentType			= "trainComposition",
	contentName			= "HK_8er",

	title           = "HK 8er",
	author				  = "TwistedGate",

	isMultipleUnit	= true,
	numberPoolMin		= 1001,
	numberPoolMax		= 1024,
	numberPool			= "Berlin",

	compatibleMaps 	= { "Berlin" },
	vehicleGroup 		= "Berlin_HK_Group",

	vehicles				= {
		utils:wagen(utils.ftype.hk["A"], true, 10011),
		utils:wagen(utils.ftype.hk["B"], true, 10012),
		utils:wagen(utils.ftype.hk["C"], true, 10013),
		utils:wagen(utils.ftype.hk["B"], true, 10014),
		utils:wagen(utils.ftype.hk["C"], false, 10015),
		utils:wagen(utils.ftype.hk["B"], false, 10016),
		utils:wagen(utils.ftype.hk["C"], false, 10017),
		utils:wagen(utils.ftype.hk["D"], false, 10018),
	},
}
g_contentManager:addContent(hk_8er)

local hk_6er = {
	contentType			= "trainComposition",
	contentName			= "HK-6er",

	title           = "HK 6er",
	author				  = "TwistedGate",

	isMultipleUnit	= true,
	numberPoolMin		= 1001,
	numberPoolMax		= 1024,
	numberPool			= "Berlin",

	compatibleMaps 	= { "Berlin" },
	vehicleGroup 		= "Berlin_HK_Group",

	vehicles				= {
		utils:wagen(utils.ftype.hk["A"], true, 10011),
		utils:wagen(utils.ftype.hk["B"], true, 10012),
		utils:wagen(utils.ftype.hk["C"], true, 10013),
		utils:wagen(utils.ftype.hk["B"], false, 10014),
		utils:wagen(utils.ftype.hk["C"], false, 10015),
		utils:wagen(utils.ftype.hk["D"], false, 10016),
	},
}
g_contentManager:addContent(hk_6er)

local mini_hk = {
	contentType			= "trainComposition",
	contentName			= "MiniHK",

	title           = "Mini-HK",
	author				  = "TwistedGate",

	isMultipleUnit	= true,
	numberPoolMin		= 1001,
	numberPoolMax		= 1024,
	numberPool			= "Berlin",

	compatibleMaps 	= { "Berlin" },
	vehicleGroup 		= "Berlin_HK_Group",

	vehicles				= {
		utils:wagen(utils.ftype.hk["A"], true, 10011),
		utils:wagen(utils.ftype.hk["D"], false, 10012),
	},
}
g_contentManager:addContent(mini_hk)

local hk_a3l92 = {
	contentType			= "trainComposition",
	contentName			= "HK-A3L92",

	title           = "HK-A3L92",
	author				  = "TwistedGate",

	isMultipleUnit	= true,
	numberPoolMin		= 538,
	numberPoolMax		= 1024,
	numberPool			= "Berlin",

	compatibleMaps 	= { "Berlin" },
	vehicleGroup 		= "Berlin_HK_Group",

	vehicles				= {
		utils:wagen(utils.ftype.hk["A"], true, 10011),
		utils:wagen(utils.ftype.hk["B"], true, 10012),
		utils:wagen(utils.ftype.hk["C"], false, 10013),
		utils:wagen(utils.ftype.hk["D"], false, 10014),
		
		utils:wagen(utils.ftype.a3l92["S"], true, 538),
		utils:wagen(utils.ftype.a3l92["K"], false, 539),
		utils:wagen(utils.ftype.a3l92["S"], true, 540),
		utils:wagen(utils.ftype.a3l92["K"], false, 541),
	},
}
g_contentManager:addContent(hk_a3l92)