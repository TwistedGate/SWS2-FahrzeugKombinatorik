--[[

  Jedes fahrzeug was den A3L92 an der Front hat.
  
  -------------------------------------------
  
  Any vehicle that has the A3L92 as the Head.

--]]

local a3l92_hk = {
  contentType    = "trainComposition",
  contentName    = "A3L92-HK",

  title          = "A3L92-HK",
  author         = "TwistedGate",

  isMultipleUnit = true,
  numberPoolMin  = 1001,
  numberPoolMax  = 1024,
  numberPool     = "Berlin",

  compatibleMaps = { "Berlin" },
  vehicleGroup   = utils.categories.fk_a3l_cat,

  vehicles = {
    utils:wagen(utils.ftype.a3l92["S"], true, utils:a3lnum()),
    utils:wagen(utils.ftype.a3l92["K"], false, utils:a3lnum()),
    utils:wagen(utils.ftype.a3l92["S"], true, utils:a3lnum()),
    utils:wagen(utils.ftype.a3l92["K"], false, utils:a3lnum()),
    
    utils:wagen(utils.ftype.hk["A"], true, utils:hknum()),
    utils:wagen(utils.ftype.hk["B"], true, utils:hknum()),
    utils:wagen(utils.ftype.hk["C"], false, utils:hknum()),
    utils:wagen(utils.ftype.hk["D"], false, utils:hknum(true)),
  },
}
g_contentManager:addContent(a3l92_hk)

local a3l92_hk_Sandwich = {
  contentType    = "trainComposition",
  contentName    = "A3L92-HK_Sandwich",

  title          = "A3L92-HK Sandwich",
  author         = "TwistedGate",

  isMultipleUnit = true,
  numberPoolMin  = 1001,
  numberPoolMax  = 1024,
  numberPool     = "Berlin",

  compatibleMaps = { "Berlin" },
  vehicleGroup   = utils.categories.fk_a3l_cat,

  vehicles = {
    utils:wagen(utils.ftype.a3l92["S"], true, utils:a3lnum()),
    utils:wagen(utils.ftype.a3l92["K"], false, utils:a3lnum()),
    utils:wagen(utils.ftype.hk["A"], true, utils:hknum()),
    utils:wagen(utils.ftype.hk["B"], true, utils:hknum()),
    utils:wagen(utils.ftype.hk["C"], false, utils:hknum()),
    utils:wagen(utils.ftype.hk["D"], false, utils:hknum(true)),
    utils:wagen(utils.ftype.a3l92["S"], true, utils:a3lnum()),
    utils:wagen(utils.ftype.a3l92["K"], false, utils:a3lnum()),
  },
}
g_contentManager:addContent(a3l92_hk_Sandwich)
