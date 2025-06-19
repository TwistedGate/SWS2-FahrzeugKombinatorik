utils = {
  -- Allgemeine Fahrzeug Typen
  ftype = {
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
    
    gi1e = { -- Nur zum angucken, nicht fahrbar!
      ["A"] = "Berlin_GI1E_a",
      ["B"] = "Berlin_GI1E_b",
    },
    
    br481 = { -- Nur zum angucken, nicht fahrbar!
      ["A"] = "Berlin_BR481",
      ["B"] = "Berlin_BR482"
    }
  },

  -- Hier könnte man seine eigenen eintragen
  skins = {
    hk = {
      ["SampleSkin"] = "HK1-SampleSkin.png",
    },
    a3l92 = {
      ["SampleSkin"] = "A3L92-SampleSkin.png",
    },
    dt5 = {
      ["SampleSkin"] = "SkinGraffiti.png",
    }
  }
}

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
		Ohne welchen ich  hier nich mal wüste wie das zu machen ist :)
  ]]
  
  assert(internalName, "Category needs an Internal-Name! (Argument #1)")
  assert(name, "Category needs a Display-Name! (Argument #2)")
  assert(maps, "Category needs a Map Table! (Argument #4)")
	
	assert(type(maps)=="table", "Map variable must be a Table! Got: "..type(maps).." (Argument #4)")
  
  local cat = {
    contentType     = "railVehicleGroup",
    contentName     = internalName,

    title           = "‎"..name,  -- Unsichtbares Unicode-Zeichen damit diese railVehicleGroup in-game am Ende der Liste eingefügt wird
    author          = "TwistedGate",
    description     = desc or "",

    infos           = infoText or "",

    compatibleMaps  = maps,
    previewFilename = "/SubwaySim2_Core/UI/MainMenu/Backgrounds/"..(background and (background.."."..background) or "Sandbox.Sandbox"),
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
