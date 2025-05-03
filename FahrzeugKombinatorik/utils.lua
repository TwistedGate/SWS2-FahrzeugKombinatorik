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
		},
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
		},
	},
	
	
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