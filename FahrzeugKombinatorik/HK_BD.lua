local skinPathA = utils.skins.hk["BD_A"]
local skinPathB = utils.skins.hk["BD_B"]

local hk_1 = {
  contentType    = "trainComposition",
  contentName    = "HK1_BD",

  title          = "HK1 BD",
  author         = "TwistedGate",

  isMultipleUnit = true,
  numberPoolMin  = 1001,
  numberPoolMax  = 1024,
  numberPool     = "Berlin",

  compatibleMaps = { "Berlin" },
  vehicleGroup   = utils.categories.fk_hk_cat, -- TODO Make Custom Group

  vehicles = {
    utils:wagen(utils.ftype.hk["A"], true, utils:hknum(), skinPathA),
    utils:wagen(utils.ftype.hk["B"], true, utils:hknum(), skinPathB),
    utils:wagen(utils.ftype.hk["C"], false, utils:hknum(), skinPathB),
    utils:wagen(utils.ftype.hk["D"], false, utils:hknum(true), skinPathA),
  },
}
g_contentManager:addContent(hk_1)

local hk_2 = {
  contentType    = "trainComposition",
  contentName    = "HK2_BD",

  title          = "HK2 BD",
  author         = "TwistedGate",

  isMultipleUnit = true,
  numberPoolMin  = 1001,
  numberPoolMax  = 1024,
  numberPool     = "Berlin",

  compatibleMaps = { "Berlin" },
  vehicleGroup   = utils.categories.fk_hk_cat, -- TODO Make Custom Group 

  vehicles = {
    utils:wagen(utils.ftype.hk["A"], true, utils:hknum(), skinPathA),
    utils:wagen(utils.ftype.hk["B"], true, utils:hknum(), skinPathB),
    utils:wagen(utils.ftype.hk["C"], false, utils:hknum(), skinPathB),
    utils:wagen(utils.ftype.hk["D"], false, utils:hknum(true), skinPathA),
		
    utils:wagen(utils.ftype.hk["A"], true, utils:hknum(), skinPathA),
    utils:wagen(utils.ftype.hk["B"], true, utils:hknum(), skinPathB),
    utils:wagen(utils.ftype.hk["C"], false, utils:hknum(), skinPathB),
    utils:wagen(utils.ftype.hk["D"], false, utils:hknum(true), skinPathA),
  },
}
g_contentManager:addContent(hk_2)