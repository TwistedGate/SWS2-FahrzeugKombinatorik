--[[
	name = Wagen Typ (z.b. "Berlin_A3L92_S")
	fwd = Soll der Wagen nach Vorne zeigen (true) oder nach Hinten (false) zeigen?
	number = Welche nummer soll der Wagen haben? Wenn dies auf "nil" gesetzt wird, wird sie Zufällig Generiert
	skinPath = Der Textur-Datei Pfad (z.b. "A3L92-SampleSkin.png")
--]]
local function wagen(name, fwd, number, skinPath)
	local v = { contentName = name, forward = fwd, vehicle = { _components = { }}}
	if number then v["vehicle"]["_components"]["VehicleNumber"] = { vehicleNumber = tostring(number) } end
	if skinPath then v["vehicle"]["_components"]["RepaintComponent"] = { repaintPath = skinPath } end
	return v
end

-- Allgemeine Fahrzeug Typen

local hk_t = {
	["A"] = "Berlin_HK_A",
	["B"] = "Berlin_HK_B",
	["C"] = "Berlin_HK_C",
	["D"] = "Berlin_HK_D",
}

local a3l92_t = {
	["S"] = "Berlin_A3L92_S",
	["K"] = "Berlin_A3L92_K",
}

local gi1e_t = { -- Nur zum angucken, nicht fahrbar!
	["A"] = "Berlin_GI1E_a",
	["B"] = "Berlin_GI1E_b",
}

local br481_t = { -- Nur zum angucken, nicht fahrbar!
	["A"] = "Berlin_BR481",
	["B"] = "Berlin_BR482"
}

-- Nur hier falls ich mich dazu entscheide mal Repaints zu machen.
local hk_s = {
	["DefaultA"] = "HK_ExteriorA_Default.png",
	["DefaultB"] = "HK_ExteriorB_Default.png",
}
local a3l92_s = {
	["Default"] = "A3L92-Default.png"
}

-- Laaanger HK
do
	local long_types = {
		hk_t["A"],
		hk_t["B"],
		hk_t["C"],
		hk_t["B"],
		hk_t["C"],
		hk_t["B"],
		hk_t["C"],
		hk_t["D"],
	}
	
	local long_skins = {
		hk_s["DefaultA"],
		hk_s["DefaultB"],
	}

	local veh = {}
	local s = 1
	local f = (#long_types)/2
	for i=1,#long_types do
		if i==1 or i==#long_types then s = 1 else s = 2 end
		
		veh[i] = wagen(long_types[i], i<f, 10010+i)
	end

	local long_hk = {
		contentType			= "trainComposition",
		contentName			= "HK_8er",

		title           = "HK 8er",
		author				  = "TwistedGate",

		isMultipleUnit	= true,
		numberPoolMin		= 1001,
		numberPoolMax		= 1024,
		numberPool			= "Berlin",

		compatibleMaps 	= { "Berlin" },
		vehicleGroup 		= "Berlin_HK_Group",

		vehicles				= veh,
	}
	g_contentManager:addContent(long_hk)
end

local mini_hk = {
	contentType			= "trainComposition",
	contentName			= "MiniHK",

	title           = "Mini-HK",
	author				  = "TwistedGate",

	isMultipleUnit	= true,
	numberPoolMin		= 1001,
	numberPoolMax		= 1024,
	numberPool			= "Berlin",

	compatibleMaps 	= { "Berlin" },
	vehicleGroup 		= "Berlin_HK_Group",

	vehicles				= {
		wagen(hk_t["A"], true, 10011),
		wagen(hk_t["D"], false, 10012),
	},
}
g_contentManager:addContent(mini_hk)

local mix = {
	contentType			= "trainComposition",
	contentName			= "A3L92-HK",

	title           = "A3L92-HK",
	author				  = "TwistedGate",

	isMultipleUnit	= true,
	numberPoolMin		= 538,
	numberPoolMax		= 1024,
	numberPool			= "Berlin",

	compatibleMaps 	= { "Berlin" },
	vehicleGroup 		= "Berlin_A3L92_Group",

	vehicles				= {
		wagen(a3l92_t["S"], true, 538),
		wagen(a3l92_t["K"], false, 539),
		wagen(a3l92_t["S"], true, 540),
		wagen(a3l92_t["K"], false, 541),
		
		wagen(hk_t["A"], true, 10011),
		wagen(hk_t["B"], true, 10012),
		wagen(hk_t["C"], false, 10013),
		wagen(hk_t["D"], false, 10014),
	},
}
g_contentManager:addContent(mix)

local mix2 = {
	contentType			= "trainComposition",
	contentName			= "HK-A3L92",

	title           = "HK-A3L92",
	author				  = "TwistedGate",

	isMultipleUnit	= true,
	numberPoolMin		= 538,
	numberPoolMax		= 1024,
	numberPool			= "Berlin",

	compatibleMaps 	= { "Berlin" },
	vehicleGroup 		= "Berlin_HK_Group",

	vehicles				= {
		wagen(hk_t["A"], true, 10011),
		wagen(hk_t["B"], true, 10012),
		wagen(hk_t["C"], false, 10013),
		wagen(hk_t["D"], false, 10014),
		
		wagen(a3l92_t["S"], true, 538),
		wagen(a3l92_t["K"], false, 539),
		wagen(a3l92_t["S"], true, 540),
		wagen(a3l92_t["K"], false, 541),
	},
}
g_contentManager:addContent(mix2)

local fake_H = {
	contentType			= "trainComposition",
	contentName			= "HK-6er",

	title           = "HK 6er",
	author				  = "TwistedGate",

	isMultipleUnit	= true,
	numberPoolMin		= 538,
	numberPoolMax		= 1024,
	numberPool			= "Berlin",

	compatibleMaps 	= { "Berlin" },
	vehicleGroup 		= "Berlin_HK_Group",

	vehicles				= {
		wagen(hk_t["A"], true, 10011),
		wagen(hk_t["B"], true, 10012),
		wagen(hk_t["C"], true, 10013),
		wagen(hk_t["B"], false, 10014),
		wagen(hk_t["C"], false, 10015),
		wagen(hk_t["D"], false, 10016),
	},
}
g_contentManager:addContent(fake_H)

local compact_HK = {
	contentType			= "trainComposition",
	contentName			= "A3L92-HK_Sandwich",

	title           = "A3L92-HK Sandwich",
	author				  = "TwistedGate",

	isMultipleUnit	= true,
	numberPoolMin		= 1001,
	numberPoolMax		= 1024,
	numberPool			= "Berlin",

	compatibleMaps 	= { "Berlin" },
	vehicleGroup 		= "Berlin_A3L92_Group",

	vehicles				= {
		wagen(a3l92_t["S"], true, 538),
		wagen(a3l92_t["K"], false, 539),
		wagen(hk_t["A"], true, 10011),
		wagen(hk_t["B"], true, 10012),
		wagen(hk_t["C"], false, 10013),
		wagen(hk_t["D"], false, 10014),
		wagen(a3l92_t["S"], true, 540),
		wagen(a3l92_t["K"], false, 541),
	},
}
g_contentManager:addContent(compact_HK)

-- Nur zum angucken, nicht Fahrbar!
local testGi = {
	contentType			= "trainComposition",
	contentName			= "GI1E",

	title           = "GI1E",
	author				  = "TwistedGate",

	isMultipleUnit	= true,
	numberPoolMin		= 1000,
	numberPoolMax		= 1024,
	numberPool			= "Berlin",

	compatibleMaps 	= { "Berlin" },
	vehicleGroup 		= "Berlin_A3L92_Group",

	vehicles				= {
		wagen(gi1e_t["A"], true, 123),
		wagen(gi1e_t["B"], false, 124),
		wagen(gi1e_t["B"], true, 125),
		wagen(gi1e_t["A"], false, 126),
	},
}
g_contentManager:addContent(testGi)

-- Nur zum angucken, nicht Fahrbar!
local testBR481 = {
	contentType			= "trainComposition",
	contentName			= "BR481",

	title           = "BR481",
	author				  = "TwistedGate",

	isMultipleUnit	= true,
	numberPoolMin		= 1000,
	numberPoolMax		= 1024,
	numberPool			= "Berlin",

	compatibleMaps 	= { "Berlin" },
	vehicleGroup 		= "Berlin_A3L92_Group",

	vehicles				= {
		wagen(br481_t["A"], true, 123),
		wagen(br481_t["B"], false, 124),
		wagen(br481_t["B"], true, 125),
		wagen(br481_t["A"], false, 126),
	},
}
g_contentManager:addContent(testBR481)
