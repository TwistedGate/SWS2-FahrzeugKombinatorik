return {
  title       = "FahrzeugKombinatorik",
  version     = "1.8.2",
  description = "Einfach ein wenig spass haben kann gut tun!",
  author      = "TwistedGate",
  targetGame  = "SubwaySim2",

  scripts = {
    -- ############### INIT START ###############
    "lang/translations.lua",
    "utils.lua",
    -- ################ INIT END ################

    "A3L92_Category.lua",
    "A3L92_HellGelb.lua",
    "A3L92_BD.lua",
    "A3L92_Dulli.lua",

    "HK_Category.lua",
    "HK_BD.lua",
    "HK_Dulli.lua",
		
		"Gisela_Category.lua",
		
    "AL1_Category.lua",
		
    "KI_Looker.lua",

    "cleanup.lua" -- Removing all Global variables created by FahrzeugKombinatorik
  },
}
