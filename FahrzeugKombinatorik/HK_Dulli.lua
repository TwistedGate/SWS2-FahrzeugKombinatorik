local skinPathA = utils.skins.hk["Dulli_A"]
local skinPathB = utils.skins.hk["Dulli_B"]

local hk_1 = {
  contentType    = "trainComposition",
  contentName    = "tg_hk1_dulli",

  title          = "HK1 Dulli",
  author         = "TwistedGate",

  isMultipleUnit = true,
  numberPoolMin  = 1001,
  numberPoolMax  = 1024,
  numberPool     = "Berlin",

  compatibleMaps = { "Berlin" },
  vehicleGroup   = utils.categories.fk_hk_dulli_cat,

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
  contentName    = "tg_hk2_dulli",

  title          = "HK2 Dulli",
  author         = "TwistedGate",

  isMultipleUnit = true,
  numberPoolMin  = 1001,
  numberPoolMax  = 1024,
  numberPool     = "Berlin",

  compatibleMaps = { "Berlin" },
  vehicleGroup   = utils.categories.fk_hk_dulli_cat,

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