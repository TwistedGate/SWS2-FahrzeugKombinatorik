--[[

  Jedes fahrzeug was den A3L92 an der Front hat.
  
  -------------------------------------------
  
  Any vehicle that has the A3L92 as the Head.

--]]

local fk_a3l_cat = utils:makeCat(
  "FahrzeugKombinatorik_A3L_Group",
  "FK A3L92",
  "A3L92_big",
  { "Berlin" },
  "Alle benutzerdefinierten Zusammenstellungen von \"FahrzeugKombinatorik\".\n\n"..
  "All custom consists added by \"FahrzeugKombinatorik\"."
)

local a3l92_x1 = {
  contentType     = "trainComposition",
  contentName     = "1x_A3L92",

  title           = "1x A3L92",
  author          = "TwistedGate",

  isMultipleUnit  = true,
  numberPoolMin   = 538,
  numberPoolMax   = 639,
  numberIncrement = 2,
  numberPool      = "Berlin",

  compatibleMaps  = { "Berlin" },
  vehicleGroup    = fk_a3l_cat,

  vehicles = {
    utils:wagen(utils.ftype.a3l92["S"], true, 538, utils.skins.a3l92["HellGelb"]),
    utils:wagen(utils.ftype.a3l92["K"], false, 539, utils.skins.a3l92["HellGelb"]),
  },
}
g_contentManager:addContent(a3l92_x1)

local a3l92_x2 = {
  contentType     = "trainComposition",
  contentName     = "2x_A3L92",

  title           = "2x A3L92",
  author          = "TwistedGate",

  isMultipleUnit  = true,
  numberPoolMin   = 538,
  numberPoolMax   = 639,
  numberIncrement = 2,
  numberPool      = "Berlin",

  compatibleMaps  = { "Berlin" },
  vehicleGroup    = fk_a3l_cat,

  vehicles = {
    utils:wagen(utils.ftype.a3l92["S"], true, 538, utils.skins.a3l92["HellGelb"]),
    utils:wagen(utils.ftype.a3l92["K"], false, 539, utils.skins.a3l92["HellGelb"]),
    utils:wagen(utils.ftype.a3l92["S"], true, 540, utils.skins.a3l92["HellGelb"]),
    utils:wagen(utils.ftype.a3l92["K"], false, 541, utils.skins.a3l92["HellGelb"]),
  },
}
g_contentManager:addContent(a3l92_x2)

local a3l92_x3 = {
  contentType     = "trainComposition",
  contentName     = "3x_A3L92",

  title           = "3x A3L92",
  author          = "TwistedGate",

  isMultipleUnit  = true,
  numberPoolMin   = 538,
  numberPoolMax   = 639,
  numberIncrement = 2,
  numberPool      = "Berlin",

  compatibleMaps  = { "Berlin" },
  vehicleGroup    = fk_a3l_cat,

  vehicles = {
    utils:wagen(utils.ftype.a3l92["S"], true, 538, utils.skins.a3l92["HellGelb"]),
    utils:wagen(utils.ftype.a3l92["K"], false, 539, utils.skins.a3l92["HellGelb"]),
    utils:wagen(utils.ftype.a3l92["S"], true, 540, utils.skins.a3l92["HellGelb"]),
    utils:wagen(utils.ftype.a3l92["K"], false, 541, utils.skins.a3l92["HellGelb"]),
    utils:wagen(utils.ftype.a3l92["S"], true, 542, utils.skins.a3l92["HellGelb"]),
    utils:wagen(utils.ftype.a3l92["K"], false, 543, utils.skins.a3l92["HellGelb"]),
  },
}
g_contentManager:addContent(a3l92_x3)

local a3l92_x4 = {
  contentType     = "trainComposition",
  contentName     = "4x_A3L92",

  title           = "4x A3L92",
  author          = "TwistedGate",

  isMultipleUnit  = true,
  numberPoolMin   = 538,
  numberPoolMax   = 639,
  numberIncrement = 2,
  numberPool      = "Berlin",

  compatibleMaps  = { "Berlin" },
  vehicleGroup    = fk_a3l_cat,

  vehicles = {
    utils:wagen(utils.ftype.a3l92["S"], true, 538, utils.skins.a3l92["HellGelb"]),
    utils:wagen(utils.ftype.a3l92["K"], false, 539, utils.skins.a3l92["HellGelb"]),
    utils:wagen(utils.ftype.a3l92["S"], true, 540, utils.skins.a3l92["HellGelb"]),
    utils:wagen(utils.ftype.a3l92["K"], false, 541, utils.skins.a3l92["HellGelb"]),
    utils:wagen(utils.ftype.a3l92["S"], true, 542, utils.skins.a3l92["HellGelb"]),
    utils:wagen(utils.ftype.a3l92["K"], false, 543, utils.skins.a3l92["HellGelb"]),
    utils:wagen(utils.ftype.a3l92["S"], true, 544, utils.skins.a3l92["HellGelb"]),
    utils:wagen(utils.ftype.a3l92["K"], false, 545, utils.skins.a3l92["HellGelb"]),
  },
}
g_contentManager:addContent(a3l92_x4)

local a3l92_hk = {
  contentType     = "trainComposition",
  contentName     = "A3L92-HK",

  title           = "A3L92-HK",
  author          = "TwistedGate",

  isMultipleUnit  = true,
  numberPoolMin   = 1001,
  numberPoolMax   = 1024,
  numberPool      = "Berlin",

  compatibleMaps  = { "Berlin" },
  vehicleGroup    = fk_a3l_cat,

  vehicles = {
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
  contentType      = "trainComposition",
  contentName      = "A3L92-HK_Sandwich",

  title            = "A3L92-HK Sandwich",
  author          = "TwistedGate",

  isMultipleUnit  = true,
  numberPoolMin    = 1001,
  numberPoolMax    = 1024,
  numberPool      = "Berlin",

  compatibleMaps  = { "Berlin" },
  vehicleGroup    = fk_a3l_cat,

  vehicles = {
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
