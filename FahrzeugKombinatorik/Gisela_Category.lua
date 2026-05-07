--[[

  Jedes fahrzeug was die GL/1E an der Front hat.
  
  -------------------------------------------
  
  Any vehicle that has the GL/1E as the Head.

--]]

local mega_gl1e = {
  contentType    = "trainComposition",
  contentName    = "Mega_GL1E",

  title          = "Mega GL/1E",
  author         = "TwistedGate",

  isMultipleUnit = true,
  numberPoolMin  = 1000,
  numberPoolMax  = 1024,
  numberPool     = "Berlin",

  compatibleMaps = { "Berlin" },
  vehicleGroup   = utils.categories.fk_gl1e_cat,

  vehicles = {
    utils:wagen(utils.ftype.gl1e["A"], true, utils:gl1e()),
    utils:wagen(utils.ftype.gl1e["B"], false, utils:gl1e()),
    utils:wagen(utils.ftype.gl1e["B"], true, utils:gl1e()),
    utils:wagen(utils.ftype.gl1e["B"], false, utils:gl1e()),
    utils:wagen(utils.ftype.gl1e["B"], true, utils:gl1e()),
    utils:wagen(utils.ftype.gl1e["B"], false, utils:gl1e()),
    utils:wagen(utils.ftype.gl1e["B"], true, utils:gl1e()),
    utils:wagen(utils.ftype.gl1e["A"], false, utils:gl1e(true)),
  },
}
g_contentManager:addContent(mega_gl1e)

local mini_gl1e_x1 = {
  contentType    = "trainComposition",
  contentName    = "Mini_GL1E_x1",

  title          = "Mini GL/1E",
  author         = "TwistedGate",

  isMultipleUnit = true,
  numberPoolMin  = 1000,
  numberPoolMax  = 1024,
  numberPool     = "Berlin",

  compatibleMaps = { "Berlin" },
  vehicleGroup   = utils.categories.fk_gl1e_cat,

  vehicles = {
    utils:wagen(utils.ftype.gl1e["A"], true, utils:gl1e()),
    utils:wagen(utils.ftype.gl1e["A"], false, utils:gl1e(true)),
  },
}
g_contentManager:addContent(mini_gl1e_x1)

local mini_gl1e_x2 = {
  contentType    = "trainComposition",
  contentName    = "Mini_GL1E_x2",

  title          = "Mini GL/1E x2",
  author         = "TwistedGate",

  isMultipleUnit = true,
  numberPoolMin  = 1000,
  numberPoolMax  = 1024,
  numberPool     = "Berlin",

  compatibleMaps = { "Berlin" },
  vehicleGroup   = utils.categories.fk_gl1e_cat,

  vehicles = {
    utils:wagen(utils.ftype.gl1e["A"], true, utils:gl1e()),
    utils:wagen(utils.ftype.gl1e["A"], false, utils:gl1e(true)),
    utils:wagen(utils.ftype.gl1e["A"], true, utils:gl1e()),
    utils:wagen(utils.ftype.gl1e["A"], false, utils:gl1e(true)),
  },
}
g_contentManager:addContent(mini_gl1e_x2)

local mini_gl1e_x3 = {
  contentType    = "trainComposition",
  contentName    = "Mini_GL1E_x3",

  title          = "Mini GL/1E x3",
  author         = "TwistedGate",

  isMultipleUnit = true,
  numberPoolMin  = 1000,
  numberPoolMax  = 1024,
  numberPool     = "Berlin",

  compatibleMaps = { "Berlin" },
  vehicleGroup   = utils.categories.fk_gl1e_cat,

  vehicles = {
    utils:wagen(utils.ftype.gl1e["A"], true, utils:gl1e()),
    utils:wagen(utils.ftype.gl1e["A"], false, utils:gl1e(true)),
    utils:wagen(utils.ftype.gl1e["A"], true, utils:gl1e()),
    utils:wagen(utils.ftype.gl1e["A"], false, utils:gl1e(true)),
    utils:wagen(utils.ftype.gl1e["A"], true, utils:gl1e()),
    utils:wagen(utils.ftype.gl1e["A"], false, utils:gl1e(true)),
  },
}
g_contentManager:addContent(mini_gl1e_x3)

local mini_gl1e_x4 = {
  contentType    = "trainComposition",
  contentName    = "Mini_GL1E_x4",

  title          = "Mini GL/1E x4",
  author         = "TwistedGate",

  isMultipleUnit = true,
  numberPoolMin  = 1000,
  numberPoolMax  = 1024,
  numberPool     = "Berlin",

  compatibleMaps = { "Berlin" },
  vehicleGroup   = utils.categories.fk_gl1e_cat,

  vehicles = {
    utils:wagen(utils.ftype.gl1e["A"], true, utils:gl1e()),
    utils:wagen(utils.ftype.gl1e["A"], false, utils:gl1e(true)),
    utils:wagen(utils.ftype.gl1e["A"], true, utils:gl1e()),
    utils:wagen(utils.ftype.gl1e["A"], false, utils:gl1e(true)),
    utils:wagen(utils.ftype.gl1e["A"], true, utils:gl1e()),
    utils:wagen(utils.ftype.gl1e["A"], false, utils:gl1e(true)),
    utils:wagen(utils.ftype.gl1e["A"], true, utils:gl1e()),
    utils:wagen(utils.ftype.gl1e["A"], false, utils:gl1e(true)),
  },
}
g_contentManager:addContent(mini_gl1e_x4)

local gl1e_a3l92 = {
  contentType    = "trainComposition",
  contentName    = "GL1E-A3L92",

  title          = "GL/1E-A3L92",
  author         = "TwistedGate",

  isMultipleUnit = true,
  numberPoolMin  = 1000,
  numberPoolMax  = 1024,
  numberPool     = "Berlin",

  compatibleMaps = { "Berlin" },
  vehicleGroup   = utils.categories.fk_gl1e_cat,

  vehicles = {
    utils:wagen(utils.ftype.gl1e["A"], true, utils:gl1e()),
    utils:wagen(utils.ftype.gl1e["B"], false, utils:gl1e()),
    utils:wagen(utils.ftype.gl1e["B"], true, utils:gl1e()),
    utils:wagen(utils.ftype.gl1e["A"], false, utils:gl1e(true)),
    utils:wagen(utils.ftype.a3l92["K"], true, utils:a3lnum()),
    utils:wagen(utils.ftype.a3l92["S"], false, utils:a3lnum()),
    utils:wagen(utils.ftype.a3l92["K"], true, utils:a3lnum()),
    utils:wagen(utils.ftype.a3l92["S"], false, utils:a3lnum()),
  },
}
g_contentManager:addContent(gl1e_a3l92)