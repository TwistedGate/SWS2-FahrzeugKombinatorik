utils = {}

function utils:print(str)
  print("[FahrzeugKombinatorik] "..str)
end

function utils:printf(str, ...)
  utils:print(string.format(str, ...))
end


--[[
  name = Wagen Typ (z.b. "Berlin_A3L92_S")
  fwd = Soll der Wagen nach Vorne zeigen (true) oder nach Hinten (false) zeigen?
  number = Welche nummer soll der Wagen haben? Wenn dies auf "nil" gesetzt wird, wird sie Zufällig Generiert
  skinPath = Der Textur-Datei Pfad (z.b. "A3L92-SampleSkin.png")
--]]
function utils:wagen(name, fwd, number, skinPath)
  local v = { contentName = name, forward = fwd, vehicle = { _components = { }}}
  if number then v["vehicle"]["_components"]["VehicleNumber"] = { vehicleNumber = tostring(number) } end
  if skinPath then v["vehicle"]["_components"]["RepaintComponent"] = { repaintPath = skinPath } end
  return v
end

function utils:makeCat(internalName, name, background, maps, desc, infoText)
  --[[
    Vielen dank an Foobian auf dem SubwaySim Discord!
    Ohne welchen ich hier nich mal wüste wie das zu machen ist :)
  ]]
  
  assert(internalName, "Category needs an Internal-Name! (Argument #1)")
  assert(name, "Category needs a Display-Name! (Argument #2)")
  assert(maps, "Category needs a Map Table! (Argument #4)")
  
  assert(type(maps)=="table", "Map variable must be a Table! Got: "..type(maps).." (Argument #4)")
  
  local preview
  if type(background)=="table" then -- For Custom Banners
    if not background.path then background.path = "/SubwaySim2_Core/UI/MainMenu/Backgrounds/" end
    if not background.name then background.name = "Sandbox" end
    
    preview = background.path..(background.name and (background.name.."."..background.name))
  else
    preview = "/SubwaySim2_Core/UI/MainMenu/Backgrounds/"..(background and (background.."."..background) or "Sandbox.Sandbox")
  end
  --utils:printf("Category \"%s\"\n \\-> Using: \"%s\"", name, preview)
  
  local cat = {
    contentType     = "railVehicleGroup",
    contentName     = internalName,

    title           = "‎"..name,  -- Unsichtbares Unicode-Zeichen damit diese railVehicleGroup in-game am Ende der Liste eingefügt wird
    author          = "TwistedGate",
    description     = desc or "",

    infos           = infoText or "",

    compatibleMaps  = maps,
    previewFilename = preview,
    --[[ Liste der Namen ALLER hintergrund bilder. (Stand: 19.06.2025 [DD.MM.YYYY])
    A3L92_big
    BackGround
    Character1_Body
    Character1_Square
    Character2_Body
    Character2_Square
    Character3_Body
    Character3_Square
    Character4_Body
    Character4_Square
    CityBerlin
    CityHamburg
    CitySelect
    DT5_1_big
    DT5_2_big
    HK_big
    NewTrip_Berlin
    NewTrip_Hamburg
    QuickPlay
    Sandbox
    Scenarios_Berlin
    Scenarios_Hamburg
    Timetable
    Tutorials
    Tutorials_Berlin
    Tutorials_Hamburg
    ]]
  }
  g_contentManager:addContent(cat)
  return internalName
end


-- Für den internen gebraucht. "a3lnum" und "hknum" funktion nutzt diese.
utils.vars = {
  a3lnum = {
    numMin = 538,
    numMax = 639,
    num = 0
  },
  hknum = {
    numMin = 1001,
    numMax = 1024,
    num = 0,
    sect = 0
  }
}
function utils:a3lnum()
  local n = utils.vars.a3lnum.num + 1
  if n > (utils.vars.a3lnum.numMax - utils.vars.a3lnum.numMin) then n = 0 end
  utils.vars.a3lnum.num = n;
  return utils.vars.a3lnum.numMin + n
end

function utils:hknum(isLast)
  local a = (utils.vars.hknum.numMin + utils.vars.hknum.num) * 10
  local b = utils.vars.hknum.sect + 1
  utils.vars.hknum.sect = b
	
  if b >= 9 or isLast then
    utils.vars.hknum.sect = 0
    local n = utils.vars.hknum.num + 1
    if n > (utils.vars.hknum.numMax - utils.vars.hknum.numMin) then n = 0 end
    utils.vars.hknum.num = n
  end
  
  return a + b
end

-- Allgemeine Fahrzeug Typen
utils.ftype = {
  hk = {
    ["A"] = "Berlin_HK_A",
    ["B"] = "Berlin_HK_B",
    ["C"] = "Berlin_HK_C",
    ["D"] = "Berlin_HK_D",
  },
  
  a3l92 = {
    ["S"] = "Berlin_A3L92_S",
    ["K"] = "Berlin_A3L92_K",
  },
  
  dt5 = {
    ["1"] = "Hamburg_DT5.1",
    ["2"] = "Hamburg_DT5.2",
  },
  
  -- KI Fahrzeuge -- Nur zum angucken, nicht fahrbar!
  -- AI Vehicles -- Just too look at them, not drivable!
  
  br474 = {
    ["A"] = "Hamburg_BR474",
    ["B"] = "Hamburg_BR874",
  },
  
  flexity = {
    ["A"] = "Berlin_Flexity_F8Z",
    -- ["B"] = "Berlin_Flexity_F8Z_1x", -- Komplett Kaputt! Completely Broken!
  },
  
  gi1e = {
    ["A"] = "Berlin_GI1E_a",
    ["B"] = "Berlin_GI1E_b",
  },
  
  br481 = {
    ["A"] = "Berlin_BR481",
    ["B"] = "Berlin_BR482"
  }
}

utils.skins = {
  hk = {
    ["BD_A"] = "/TwistedGate_FahrzeugKombinatorik/Skins/HK/HG-BlackDoors/HK_BD_A.HK_BD_A",
    ["BD_B"] = "/TwistedGate_FahrzeugKombinatorik/Skins/HK/HG-BlackDoors/HK_BD_B.HK_BD_B",
    ["Dulli_A"] = "/TwistedGate_FahrzeugKombinatorik/Skins/HK/DulliTrupp/HK_Dulli_A.HK_Dulli_A",
    ["Dulli_B"] = "/TwistedGate_FahrzeugKombinatorik/Skins/HK/DulliTrupp/HK_Dulli_B.HK_Dulli_B",
  },
  a3l92 = {
    ["HellGelb"] = "/TwistedGate_FahrzeugKombinatorik/Skins/A3L/A3L92_HellGelb.A3L92_HellGelb",
    ["Hell_BD"] = "/TwistedGate_FahrzeugKombinatorik/Skins/A3L/HG-BlackDoors/A3L92_BD.A3L92_BD",
    ["Dulli"] = "/TwistedGate_FahrzeugKombinatorik/Skins/A3L/DulliTrupp/A3L92_Dulli.A3L92_Dulli",
  },
  dt5 = {
    ["SampleSkin"] = "SkinGraffiti.png",
  }
}

-- Categories/Groups

utils.categories = {}
utils.categories.fk_a3l_cat = utils:makeCat(
  "FahrzeugKombinatorik_A3L92_Group",
  "FK A3L92",
  {path="/TwistedGate_FahrzeugKombinatorik/UI/", name="FahrzeugKombinatorik_Main_Banner"},
  { "Berlin" },
  g_l10n:format("$FK_Default_Cat_Desc")
)

utils.categories.fk_a3l_dulli_cat = utils:makeCat(
  "FahrzeugKombinatorik_Dulli_A3L92_Group",
  "FK Dulli A3L92",
  {path="/TwistedGate_FahrzeugKombinatorik/UI/", name="FahrzeugKombinatorik_Dulli_A3L92_Banner"},
  { "Berlin" },
  g_l10n:format("$FK_Default_Cat_Desc")
)

utils.categories.fk_hk_cat = utils:makeCat(
  "FahrzeugKombinatorik_HK_Group",
  "FK HK",
  {path="/TwistedGate_FahrzeugKombinatorik/UI/", name="FahrzeugKombinatorik_Main_Banner"},
  { "Berlin" },
  g_l10n:format("$FK_Default_Cat_Desc"),
  g_l10n:format("$FK_HK_Cat_Info")
)

utils.categories.fk_hk_dulli_cat = utils:makeCat(
  "FahrzeugKombinatorik_Dulli_HK_Group",
  "FK Dulli HK",
  {path="/TwistedGate_FahrzeugKombinatorik/UI/", name="FahrzeugKombinatorik_Dulli_HK_Banner"},
  { "Berlin" },
  g_l10n:format("$FK_Default_Cat_Desc")
)

utils.categories.BerlinAIGroup = utils:makeCat(
  "Berlin_AI_Group",
  "AI (Berlin)",
  {path="/TwistedGate_FahrzeugKombinatorik/UI/", name="FahrzeugKombinatorik_BerlinKI_Banner"},
  { "Berlin" },
  g_l10n:format("$FK_Default_Cat_Desc"),
  g_l10n:format("$FK_AI_Cat_Info")
)

utils.categories.HamburgAIGroup = utils:makeCat(
  "Hamburg_AI_Group",
  "AI (Hamburg)",
  {path="/TwistedGate_FahrzeugKombinatorik/UI/", name="FahrzeugKombinatorik_HamburgKI_Banner"},
  { "Hamburg" },
  g_l10n:format("$FK_Default_Cat_Desc"),
  g_l10n:format("$FK_AI_Cat_Info")
)
