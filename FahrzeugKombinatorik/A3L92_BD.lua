local skinPath = utils.skins.a3l92["Hell_BD"]

local a3l92_x1 = {
  contentType     = "trainComposition",
  contentName     = "1x_a3l92_bd",
  
  title           = "1x BD",
  author          = "TwistedGate",
  
  isMultipleUnit  = true,
  numberPoolMin   = 538,
  numberPoolMax   = 639,
  numberIncrement = 2,
  numberPool      = "Berlin",
  
  compatibleMaps  = { "Berlin" },
  vehicleGroup    = utils.categories.fk_a3l_cat, -- TODO Make Custom Group
  
  vehicles = {
    utils:wagen(utils.ftype.a3l92["S"], true, utils:a3lnum(), skinPath),
    utils:wagen(utils.ftype.a3l92["K"], false, utils:a3lnum(), skinPath),
  },
}
g_contentManager:addContent(a3l92_x1)

local a3l92_x2 = {
  contentType     = "trainComposition",
  contentName     = "2x_a3l92_bd",
  
  title           = "2x BD",
  author          = "TwistedGate",
  
  isMultipleUnit  = true,
  numberPoolMin   = 538,
  numberPoolMax   = 639,
  numberIncrement = 2,
  numberPool      = "Berlin",
  
  compatibleMaps  = { "Berlin" },
  vehicleGroup    = utils.categories.fk_a3l_cat, -- TODO Make Custom Group
  
  vehicles = {
    utils:wagen(utils.ftype.a3l92["S"], true, utils:a3lnum(), skinPath),
    utils:wagen(utils.ftype.a3l92["K"], false, utils:a3lnum(), skinPath),
    utils:wagen(utils.ftype.a3l92["S"], true, utils:a3lnum(), skinPath),
    utils:wagen(utils.ftype.a3l92["K"], false, utils:a3lnum(), skinPath),
  },
}
g_contentManager:addContent(a3l92_x2)

local a3l92_x3 = {
  contentType     = "trainComposition",
  contentName     = "3x_a3l92_bd",
  
  title           = "3x BD",
  author          = "TwistedGate",
  
  isMultipleUnit  = true,
  numberPoolMin   = 538,
  numberPoolMax   = 639,
  numberIncrement = 2,
  numberPool      = "Berlin",
  
  compatibleMaps  = { "Berlin" },
  vehicleGroup    = utils.categories.fk_a3l_cat, -- TODO Make Custom Group
  
  vehicles = {
    utils:wagen(utils.ftype.a3l92["S"], true, utils:a3lnum(), skinPath),
    utils:wagen(utils.ftype.a3l92["K"], false, utils:a3lnum(), skinPath),
    utils:wagen(utils.ftype.a3l92["S"], true, utils:a3lnum(), skinPath),
    utils:wagen(utils.ftype.a3l92["K"], false, utils:a3lnum(), skinPath),
    utils:wagen(utils.ftype.a3l92["S"], true, utils:a3lnum(), skinPath),
    utils:wagen(utils.ftype.a3l92["K"], false, utils:a3lnum(), skinPath),
  },
}
g_contentManager:addContent(a3l92_x3)

local a3l92_x4 = {
  contentType     = "trainComposition",
  contentName     = "4x_a3l92_bd",
  
  title           = "4x BD",
  author          = "TwistedGate",
  
  isMultipleUnit  = true,
  numberPoolMin   = 538,
  numberPoolMax   = 639,
  numberIncrement = 2,
  numberPool      = "Berlin",
  
  compatibleMaps  = { "Berlin" },
  vehicleGroup    = utils.categories.fk_a3l_cat, -- TODO Make Custom Group
  
  vehicles = {
    utils:wagen(utils.ftype.a3l92["S"], true, utils:a3lnum(), skinPath),
    utils:wagen(utils.ftype.a3l92["K"], false, utils:a3lnum(), skinPath),
    utils:wagen(utils.ftype.a3l92["S"], true, utils:a3lnum(), skinPath),
    utils:wagen(utils.ftype.a3l92["K"], false, utils:a3lnum(), skinPath),
    utils:wagen(utils.ftype.a3l92["S"], true, utils:a3lnum(), skinPath),
    utils:wagen(utils.ftype.a3l92["K"], false, utils:a3lnum(), skinPath),
    utils:wagen(utils.ftype.a3l92["S"], true, utils:a3lnum(), skinPath),
    utils:wagen(utils.ftype.a3l92["K"], false, utils:a3lnum(), skinPath),
  },
}
g_contentManager:addContent(a3l92_x4)