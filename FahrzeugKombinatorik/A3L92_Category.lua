--[[

	Jedes fahrzeug was den A3L92 an der Front hat.
	
	-------------------------------------------
	
	Any vehicle that has the A3L92 as the Head.

--]]

local a3l92_hk = {
	contentType			= "trainComposition",
	contentName			= "A3L92-HK",

	title           = "A3L92-HK",
	author				  = "TwistedGate",

	isMultipleUnit	= true,
	numberPoolMin		= 538,
	numberPoolMax		= 1024,
	numberPool			= "Berlin",

	compatibleMaps 	= { "Berlin" },
	vehicleGroup 		= "Berlin_A3L92_Group",

	vehicles				= {
		utils:wagen(utils.ftype.a3l92["S"], true, 538),
		utils:wagen(utils.ftype.a3l92["K"], false, 539),
		utils:wagen(utils.ftype.a3l92["S"], true, 540),
		utils:wagen(utils.ftype.a3l92["K"], false, 541),
		
		utils:wagen(utils.ftype.hk["A"], true, 10011),
		utils:wagen(utils.ftype.hk["B"], true, 10012),
		utils:wagen(utils.ftype.hk["C"], false, 10013),
		utils:wagen(utils.ftype.hk["D"], false, 10014),
	},
}
g_contentManager:addContent(a3l92_hk)

local a3l92_hk_Sandwich = {
	contentType			= "trainComposition",
	contentName			= "A3L92-HK_Sandwich",

	title           = "A3L92-HK Sandwich",
	author				  = "TwistedGate",

	isMultipleUnit	= true,
	numberPoolMin		= 1001,
	numberPoolMax		= 1024,
	numberPool			= "Berlin",

	compatibleMaps 	= { "Berlin" },
	vehicleGroup 		= "Berlin_A3L92_Group",

	vehicles				= {
		utils:wagen(utils.ftype.a3l92["S"], true, 538),
		utils:wagen(utils.ftype.a3l92["K"], false, 539),
		utils:wagen(utils.ftype.hk["A"], true, 10011),
		utils:wagen(utils.ftype.hk["B"], true, 10012),
		utils:wagen(utils.ftype.hk["C"], false, 10013),
		utils:wagen(utils.ftype.hk["D"], false, 10014),
		utils:wagen(utils.ftype.a3l92["S"], true, 540),
		utils:wagen(utils.ftype.a3l92["K"], false, 541),
	},
}
g_contentManager:addContent(a3l92_hk_Sandwich)
