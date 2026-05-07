--[[

  Jedes fahrzeug was den AL1 an der Front hat.
  
  -------------------------------------------
  
  Any vehicle that has the AL1 as the Head.

--]]

local al1_a3l92_al1 = {
  contentType    = "trainComposition",
  contentName    = "AL1-A3L92-AL1",

  title          = "AL1-A3L92-AL1",
  author         = "TwistedGate",

  compatibleMaps = { "Berlin", "Hamburg" },
  vehicleGroup   = utils.categories.fk_al1_cat,

  vehicles = {
    utils:wagen(utils.ftype.al1["A"], true, 1211),
    
    utils:wagen(utils.ftype.a3l92["S"], true, utils:a3lnum()),
    utils:wagen(utils.ftype.a3l92["K"], false, utils:a3lnum()),
    utils:wagen(utils.ftype.a3l92["S"], true, utils:a3lnum()),
    utils:wagen(utils.ftype.a3l92["K"], false, utils:a3lnum()),
		
    utils:wagen(utils.ftype.al1["A"], false, 1212),
  },
}
g_contentManager:addContent(al1_a3l92_al1)

local al1_hk_al1 = {
  contentType    = "trainComposition",
  contentName    = "AL1-HK-AL1",

  title          = "AL1-HK-AL1",
  author         = "TwistedGate",

  compatibleMaps = { "Berlin", "Hamburg" },
  vehicleGroup   = utils.categories.fk_al1_cat,

  vehicles = {
    utils:wagen(utils.ftype.al1["A"], true, 1211),
    
    utils:wagen(utils.ftype.hk["A"], true, utils:hknum()),
    utils:wagen(utils.ftype.hk["B"], true, utils:hknum()),
    utils:wagen(utils.ftype.hk["C"], false, utils:hknum()),
    utils:wagen(utils.ftype.hk["D"], false, utils:hknum(true)),
		
    utils:wagen(utils.ftype.al1["A"], false, 1212),
  },
}
g_contentManager:addContent(al1_hk_al1)

local al1_gi1e_al1 = {
  contentType    = "trainComposition",
  contentName    = "AL1-GL1E-AL1",

  title          = "AL1-GL1E-AL1",
  author         = "TwistedGate",

  compatibleMaps = { "Berlin", "Hamburg" },
  vehicleGroup   = utils.categories.fk_al1_cat,

  vehicles = {
    utils:wagen(utils.ftype.al1["A"], true, 1211),
		
    utils:wagen(utils.ftype.gl1e["A"], true, 123),
    utils:wagen(utils.ftype.gl1e["B"], false, 124),
    utils:wagen(utils.ftype.gl1e["B"], true, 125),
    utils:wagen(utils.ftype.gl1e["A"], false, 126),
		
    utils:wagen(utils.ftype.al1["A"], false, 1212),
  },
}
g_contentManager:addContent(al1_gi1e_al1)
