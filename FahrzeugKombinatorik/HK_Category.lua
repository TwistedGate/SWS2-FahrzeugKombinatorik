--[[

  Jedes fahrzeug was den Hk an der Front hat.
  
  -------------------------------------------
  
  Any vehicle that has the Hk as the Head.

--]]

local hk_8er = {
  contentType    = "trainComposition",
  contentName    = "HK_8er",

  title          = "HK 8er",
  author         = "TwistedGate",

  isMultipleUnit = true,
  numberPoolMin  = 1001,
  numberPoolMax  = 1024,
  numberPool     = "Berlin",

  compatibleMaps = { "Berlin" },
  vehicleGroup   = utils.categories.fk_hk_cat,

  vehicles = {
    utils:wagen(utils.ftype.hk["A"], true, utils:hknum()),
    utils:wagen(utils.ftype.hk["B"], true, utils:hknum()),
    utils:wagen(utils.ftype.hk["C"], true, utils:hknum()),
    utils:wagen(utils.ftype.hk["B"], true, utils:hknum()),
    utils:wagen(utils.ftype.hk["C"], false, utils:hknum()),
    utils:wagen(utils.ftype.hk["B"], false, utils:hknum()),
    utils:wagen(utils.ftype.hk["C"], false, utils:hknum()),
    utils:wagen(utils.ftype.hk["D"], false, utils:hknum(true)),
  },
}
g_contentManager:addContent(hk_8er)

local hk_6er = {
  contentType    = "trainComposition",
  contentName    = "HK-6er",

  title          = "HK 6er",
  author         = "TwistedGate",

  isMultipleUnit = true,
  numberPoolMin  = 1001,
  numberPoolMax  = 1024,
  numberPool     = "Berlin",

  compatibleMaps = { "Berlin" },
  vehicleGroup   = utils.categories.fk_hk_cat,

  vehicles = {
    utils:wagen(utils.ftype.hk["A"], true, utils:hknum()),
    utils:wagen(utils.ftype.hk["B"], true, utils:hknum()),
    utils:wagen(utils.ftype.hk["C"], true, utils:hknum()),
    utils:wagen(utils.ftype.hk["B"], false, utils:hknum()),
    utils:wagen(utils.ftype.hk["C"], false, utils:hknum()),
    utils:wagen(utils.ftype.hk["D"], false, utils:hknum(true)),
  },
}
g_contentManager:addContent(hk_6er)

local mini_hk = {
  contentType    = "trainComposition",
  contentName    = "MiniHK",

  title          = "Mini-HK",
  author         = "TwistedGate",

  isMultipleUnit = true,
  numberPoolMin  = 1001,
  numberPoolMax  = 1024,
  numberPool     = "Berlin",

  compatibleMaps = { "Berlin" },
  vehicleGroup   = utils.categories.fk_hk_cat,

  vehicles = {
    utils:wagen(utils.ftype.hk["A"], true, utils:hknum()),
    utils:wagen(utils.ftype.hk["D"], false, utils:hknum(true)),
  },
}
g_contentManager:addContent(mini_hk)

local hk_a3l92 = {
  contentType    = "trainComposition",
  contentName    = "HK-A3L92",

  title          = "HK-A3L92",
  author         = "TwistedGate",

  isMultipleUnit = true,
  numberPoolMin  = 538,
  numberPoolMax  = 1024,
  numberPool     = "Berlin",

  compatibleMaps = { "Berlin" },
  vehicleGroup   = utils.categories.fk_hk_cat,

  vehicles = {
    utils:wagen(utils.ftype.hk["A"], true, utils:hknum()),
    utils:wagen(utils.ftype.hk["B"], true, utils:hknum()),
    utils:wagen(utils.ftype.hk["C"], false, utils:hknum()),
    utils:wagen(utils.ftype.hk["D"], false, utils:hknum(true)),
    
    utils:wagen(utils.ftype.a3l92["S"], true, utils:a3lnum()),
    utils:wagen(utils.ftype.a3l92["K"], false, utils:a3lnum()),
    utils:wagen(utils.ftype.a3l92["S"], true, utils:a3lnum()),
    utils:wagen(utils.ftype.a3l92["K"], false, utils:a3lnum()),
  },
}
g_contentManager:addContent(hk_a3l92)