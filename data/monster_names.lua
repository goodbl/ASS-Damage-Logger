local monster_names = {
	[21010101] = "Hilichurl",
	[21020101] = "Wooden Shieldwall Mitachurl",
	[21020201] = "Blazing Axe Mitachurl",
	[21020202] = "Blazing Axe Mitachurl",
	[21020301] = "Rock Shieldwall Mitachurl",
	[21020401] = "Frostarm Lawachurl",
	[21020501] = "Stonehide Lawachurl",
	[21020601] = "Ice Shieldwall Mitachurl",
	[21020701] = "Crackling Axe Mitachurl",
	[21020703] = "Crackling Axe Mitachurl",
	[21020801] = "Thunderhelm Lawachurl",
	[20010101] = "Dendro Slime",
	[20010201] = "Large Dendro Slime",
	[20010202] = "Large Dendro Slime",
	[20010301] = "Anemo Slime",
	[20010401] = "Large Anemo Slime",
	[20010403] = "Large Anemo Slime",
	[29010101] = "Stormterror",
	[29010102] = "Stormterror",
	[29010103] = "Stormterror",
	[29010104] = "Stormterror",
	[29020101] = "Lupus Boreas, Dominator of Wolves",
	[29020102] = "Lupus Boreas, Dominator of Wolves",
	[29030101] = "Eleventh of the Fatui Harbingers - Tartaglia",
	[29030102] = "Delusion Unleashed - Childe",
	[29030103] = "Childe",
	[29030104] = "Eleventh of the Fatui Harbingers - Tartaglia",
	[29030105] = "Delusion Unleashed - Childe",
	[29030106] = "Childe",
	[29040101] = "Azhdaha",
	[29040102] = "Azhdaha",
	[29040103] = "Azhdaha",
	[29040104] = "Azhdaha",
	[29040111] = "Azhdaha",
	[29050101] = "Signora",
	[29050102] = "La Signora",
	[29050103] = "Signora",
	[29050104] = "La Signora",
	[29060101] = "Raiden Shogun",
	[29060102] = "Raiden Ei",
	[29060201] = "Monster_Shougun_Mitakenarukami",
	[29060202] = "Magatsu Mitake Narukami no Mikoto",
	[29060203] = "Magatsu Mitake Narukami no Mikoto",
	[20020101] = "Eye of the Storm",
	[20040101] = "Electro Hypostasis",
	[20040102] = "Electro Hypostasis",
	[20040201] = "Anemo Hypostasis",
	[20040202] = "Anemo Hypostasis",
	[20040301] = "Geo Hypostasis",
	[20040302] = "Geo Hypostasis",
	[20040401] = "Hydro Hypostasis",
	[20040501] = "Cryo Hypostasis",
	[20040601] = "Pyro Hypostasis",
	[20010501] = "Electro Slime",
	[20010601] = "Large Electro Slime",
	[20010604] = "Large Electro Slime",
	[20010701] = "Mutant Electro Slime",
	[20010702] = "Mutant Electro Slime",
	[20010801] = "Cryo Slime",
	[20010802] = "Cryo Slime",
	[20010901] = "Large Cryo Slime",
	[20010902] = "Large Cryo Slime",
	[20010904] = "Large Cryo Slime",
	[20011001] = "Hydro Slime",
	[20011101] = "Large Hydro Slime",
	[20011103] = "Large Hydro Slime",
	[20011601] = "Hydro Hypostasis Summon",
	[20011701] = "Hydro Hypostasis Summon",
	[20011801] = "Hydro Hypostasis Summon",
	[20011901] = "Hydro Hypostasis Summon",
	[20050101] = "Oceanid",
	[20050102] = "Oceanid",
	[20050201] = "Hydro Mimic Boar",
	[20050202] = "Hydro Mimic Boar",
	[20050203] = "Hydro Mimic Boar",
	[20050301] = "Hydro Mimic Crane",
	[20050302] = "Hydro Mimic Crane",
	[20050401] = "Hydro Mimic Crab",
	[20050402] = "Hydro Mimic Crab",
	[20050403] = "Hydro Mimic Crab",
	[20050501] = "Hydro Mimic Finch",
	[20050502] = "Hydro Mimic Finch",
	[20050601] = "Hydro Mimic Mallard",
	[20050602] = "Hydro Mimic Mallard",
	[20050603] = "Hydro Mimic Mallard",
	[20050701] = "Hydro Mimic Ferret",
	[20050702] = "Hydro Mimic Ferret",
	[20050703] = "Hydro Mimic Ferret",
	[20050801] = "Hydro Mimic Frog",
	[20050802] = "Hydro Mimic Frog",
	[20050901] = "Hydro Mimic Raptor",
	[20070101] = "Thunder Manifestation",
	[21010201] = "Hilichurl Fighter",
	[21010301] = "Wooden Shield Hilichurl Guard",
	[21010401] = "Hilichurl Shooter",
	[21010402] = "Hilichurl Shooter",
	[21010501] = "Pyro Hilichurl Shooter",
	[21010502] = "Pyro Hilichurl Shooter",
	[21010601] = "Hilichurl Grenadier",
	[21010603] = "Hilichurl Grenadier",
	[21010701] = "Hilichurl Berserker",
	[21010901] = "Cryo Hilichurl Shooter",
	[21010902] = "Cryo Hilichurl Shooter",
	[21011001] = "Electro Hilichurl Shooter",
	[21011002] = "Electro Hilichurl Shooter",
	[21011201] = "Rock Shield Hilichurl Guard",
	[21011301] = "Cryo Hilichurl Grenadier",
	[21011302] = "Cryo Hilichurl Grenadier",
	[21011401] = "Ice Shield Hilichurl Guard",
	[21011403] = "Ice Shield Hilichurl Guard",
	[21011501] = "Unusual Hilichurl",
	[21011601] = "Electro Hilichurl Grenadier",
	[21011602] = "Electro Hilichurl Grenadier",
	[20011201] = "Pyro Slime",
	[20011202] = "Pyro Slime",
	[20011301] = "Large Pyro Slime",
	[20011304] = "Large Pyro Slime",
	[20011401] = "Geo Slime",
	[20011501] = "Large Geo Slime",
	[20011502] = "Large Geo Slime",
	[22010101] = "Pyro Abyss Mage",
	[22010102] = "Pyro Abyss Mage",
	[22010103] = "Pyro Abyss Mage",
	[22010104] = "Pyro Abyss Mage",
	[22010201] = "Cryo Abyss Mage",
	[22010202] = "Cryo Abyss Mage",
	[22010203] = "Cryo Abyss Mage",
	[22010204] = "Cryo Abyss Mage",
	[22010301] = "Hydro Abyss Mage",
	[22010302] = "Hydro Abyss Mage",
	[22010303] = "Hydro Abyss Mage",
	[22010304] = "Hydro Abyss Mage",
	[22010401] = "Electro Abyss Mage",
	[22010403] = "Electro Abyss Mage",
	[22010404] = "Electro Abyss Mage",
	[22020101] = "Abyss Herald: Wicked Torrents",
	[22020102] = "Abyss Herald: Wicked Torrents",
	[22020103] = "Abyss Herald: Wicked Torrents",
	[22030101] = "Abyss Lector: Violet Lightning",
	[22030102] = "Abyss Lector: Violet Lightning",
	[22030103] = "Abyss Lector: Violet Lightning",
	[22030201] = "Abyss Lector: Fathomless Flames",
	[22030202] = "Abyss Lector: Fathomless Flames",
	[22040101] = "Rockfond Rifthound Whelp",
	[22040201] = "Thundercraven Rifthound Whelp",
	[22050101] = "Rockfond Rifthound",
	[22050201] = "Thundercraven Rifthound",
	[22060101] = "Golden Wolflord",
	[22070101] = "Shadowy Husk: Standard Bearer",
	[22070102] = "Shadowy Husk: Standard Bearer",
	[22070201] = "Shadowy Husk: Line Breaker",
	[22070202] = "Shadowy Husk: Line Breaker",
	[22070301] = "Shadowy Husk: Defender",
	[22070302] = "Shadowy Husk: Defender",
	[22080101] = "Black Serpent Knight: Windcutter",
	[22090101] = "Darksign_Shadow_01",
	[21030101] = "Hydro Samachurl",
	[21030103] = "Hydro Samachurl",
	[21030201] = "Dendro Samachurl",
	[21030203] = "Dendro Samachurl",
	[21030301] = "Anemo Samachurl",
	[21030303] = "Anemo Samachurl",
	[21030304] = "Anemo Samachurl",
	[21030401] = "Geo Samachurl",
	[21030402] = "Geo Samachurl",
	[21030501] = "Cryo Samachurl",
	[21030601] = "Electro Samachurl",
	[21030603] = "Electro Samachurl",
	[24010101] = "Ruin Guard",
	[24010108] = "Ruin Guard",
	[24010109] = "Ruin Guard",
	[24010201] = "Ruin Hunter",
	[24010301] = "Ruin Grader",
	[24010303] = "Ruin Grader",
	[24010304] = "Ruin Grader",
	[24010401] = "Ruin Serpent",
	[24020101] = "Ruin Cruiser",
	[24020102] = "Ruin Cruiser",
	[24020103] = "Ruin Cruiser",
	[24020201] = "Ruin Destroyer",
	[24020202] = "Ruin Destroyer",
	[24020203] = "Ruin Destroyer",
	[24020301] = "Ruin Defender",
	[24020302] = "Ruin Defender",
	[24020303] = "Ruin Defender",
	[24020304] = "Ruin Defender",
	[24020401] = "Ruin Scout",
	[24020402] = "Ruin Scout",
	[24020403] = "Ruin Scout",
	[24021101] = "Perpetual Mechanical Array",
	[24021102] = "Perpetual Mechanical Array",
	[24030101] = "Ruin Drake: Skywatch",
	[24030201] = "Ruin Drake: Earthguard",
	[23010101] = "Fatui Skirmisher - Cryogunner Legionnaire",
	[23010201] = "Fatui Skirmisher - Hydrogunner Legionnaire",
	[23010301] = "Fatui Skirmisher - Electrohammer Vanguard",
	[23010401] = "Fatui Skirmisher - Geochanter Bracer",
	[23010501] = "Fatui Skirmisher - Anemoboxer Vanguard",
	[23010601] = "Fatui Skirmisher - Pyroslinger Bracer",
	[23020101] = "Fatui Pyro Agent",
	[23020102] = "Fatui Pyro Agent",
	[23030101] = "Fatui Electro Cicin Mage",
	[23030102] = "Fatui Electro Cicin Mage",
	[23040101] = "Fatui Cryo Cicin Mage",
	[23040102] = "Fatui Cryo Cicin Mage",
	[23050101] = "Mirror Maiden",
	[25010101] = "Treasure Hoarders: Liuliu",
	[25010102] = "Treasure Hoarders: Liuliu",
	[25010103] = "Treasure Hoarders: Liuliu",
	[25010104] = "Treasure Hoarders: Liuliu",
	[25010105] = "Treasure Hoarders: Liuliu",
	[25010106] = "Treasure Hoarders: Liuliu",
	[25010201] = "Treasure Hoarders: Scout",
	[25010203] = "Treasure Hoarders: Scout",
	[25010204] = "Treasure Hoarders: Scout",
	[25010205] = "Treasure Hoarders: Scout",
	[25010206] = "Treasure Hoarders: Scout",
	[25010207] = "Treasure Hoarders: Scout",
	[25010208] = "Treasure Hoarders: Scout",
	[25010301] = "Treasure Hoarders: Pyro Potioneer",
	[25010302] = "Treasure Hoarders: Pyro Potioneer",
	[25010401] = "Treasure Hoarders: Hydro Potioneer",
	[25010501] = "Treasure Hoarders: Electro Potioneer",
	[25010601] = "Treasure Hoarders: Cryo Potioneer",
	[25010701] = "Treasure Hoarders: Handyman",
	[25020101] = "Treasure Hoarders: Raptor",
	[25020102] = "Treasure Hoarders: Raptor",
	[25020201] = "Treasure Hoarders: Marksman",
	[25020204] = "Treasure Hoarders: Marksman",
	[25030101] = "Treasure Hoarders: Carmen",
	[25030102] = "Treasure Hoarders: Carmen",
	[25030103] = "Treasure Hoarders: Carmen",
	[25030201] = "Treasure Hoarders: Gravedigger",
	[25030301] = "Treasure Hoarders: Seaman",
	[25040101] = "Treasure Hoarders: Boss",
	[25040102] = "Treasure Hoarders: Boss",
	[25040103] = "Treasure Hoarders: Boss",
	[25050101] = "Millelith Soldier",
	[25050201] = "Millelith Sergeant",
	[25050301] = "Shogunate Infantry",
	[25050401] = "Shogunate Infantry Captain",
	[25050402] = "Shogunate Infantry Captain",
	[25050501] = "Sangonomiya Cohort",
	[25050502] = "Sangonomiya Cohort",
	[25060101] = "Treasure Hoarders: Pugilist",
	[25060102] = "Treasure Hoarders: Pugilist",
	[25070101] = "Treasure Hoarders: Crusher",
	[25070201] = "Treasure Hoarders: Wallenstein",
	[25070202] = "Treasure Hoarders: Wallenstein",
	[25080101] = "Nobushi: Jintouban",
	[25080201] = "Nobushi: Hitsukeban",
	[25080202] = "Nobushi: Hitsukeban",
	[25080301] = "Nobushi: Kikouban",
	[25080401] = "Yoriki Samurai",
	[25080402] = "Yoriki Samurai",
	[25080403] = "Yoriki Samurai",
	[25080404] = "Yoriki Samurai",
	[25090101] = "Maguu Kenki",
	[25090102] = "Maguu Kenki",
	[25090103] = "Maguu Kenki",
	[25090104] = "Maguu Kenki",
	[25090201] = "Maguu Kenki: Lone Gale",
	[25090301] = "Maguu Kenki: Galloping Frost",
	[25090401] = "Maguu Kenki: Mask of Terror",
	[25100101] = "Kairagi: Dancing Thunder",
	[25100301] = "Ochimusha: Ensorcelled Thunder",
	[25100201] = "Kairagi: Fiery Might",
	[25100401] = "Ochimusha: Cankered Flame",
	[25100102] = "Kairagi: Dancing Thunder",
	[25100302] = "Ochimusha: Ensorcelled Thunder",
	[25210101] = "Eremite Axe Vanguard",
	[25210102] = "Eremite Axe Vanguard",
	[25210103] = "Eremite Axe Vanguard",
	[25210104] = "EremiteElite_Female_Hatchet_01",
	[25210105] = "EremiteElite_Female_Hatchet_02",
	[25210106] = "EremiteElite_Female_Hatchet_03",
	[25210201] = "Eremite Crossbow",
	[25210202] = "Eremite Crossbow",
	[25210203] = "Eremite Crossbow",
	[25210204] = "EremiteElite_Male_Standard_Crossbow_01",
	[25210205] = "EremiteElite_Male_Standard_Crossbow_02",
	[25210206] = "EremiteElite_Male_Standard_Crossbow_03",
	[25210301] = "Eremite Ravenbeak Halberdier",
	[25210302] = "Eremite Ravenbeak Halberdier",
	[25210303] = "Eremite Ravenbeak Halberdier",
	[25210304] = "EremiteElite_Male_Standard_Pole_01",
	[25210305] = "EremiteElite_Male_Standard_Pole_02",
	[25210306] = "EremiteElite_Male_Standard_Pole_03",
	[25210401] = "Eremite Linebreaker",
	[25210402] = "Eremite Linebreaker",
	[25210403] = "Eremite Linebreaker",
	[25210404] = "EremiteElite_MuscleMan_Gloves_01",
	[25210405] = "EremiteElite_MuscleMan_Gloves_02",
	[25210406] = "EremiteElite_MuscleMan_Gloves_03",
	[25210501] = "Eremite Sword-Dancer",
	[25210502] = "Eremite Sword-Dancer",
	[25210503] = "Eremite Sword-Dancer",
	[25210504] = "EremiteElite_MuscleMan_Simitar_01",
	[25210505] = "EremiteElite_MuscleMan_Simitar_02",
	[25210506] = "EremiteElite_MuscleMan_Simitar_03",
	[25210601] = "Eremite_Male_Standard_NoWeapon_01",
	[25210602] = "Eremite_Male_Standard_NoWeapon_02",
	[25310101] = "Eremite Desert Clearwater",
	[25310201] = "Eremite Sunfrost",
	[25310301] = "Eremite Daythunder",
	[26010101] = "Cryo Whopperflower",
	[26010102] = "Cryo Whopperflower",
	[26010103] = "Cryo Whopperflower",
	[26010104] = "Cryo Whopperflower",
	[26010201] = "Pyro Whopperflower",
	[26010301] = "Electro Whopperflower",
	[26020101] = "Cryo Regisvine",
	[26020102] = "Cryo Regisvine",
	[26020201] = "Pyro Regisvine",
	[26020301] = "Electro Regisvine",
	[26030101] = "Geovishap Hatchling",
	[26040101] = "Geovishap",
	[26040102] = "Geovishap",
	[26040103] = "Geovishap",
	[26040104] = "Geovishap",
	[26050101] = "Primo Geovishap",
	[26050201] = "Primo Geovishap",
	[26050301] = "Primo Geovishap",
	[26050401] = "Primo Geovishap",
	[26050501] = "Primo Geovishap",
	[26050601] = "Primordial Bathysmal Vishap",
	[26050901] = "Primordial Bathysmal Vishap",
	[26050701] = "Rimebiter Bathysmal Vishap",
	[26051001] = "Rimebiter Bathysmal Vishap",
	[26050702] = "Rimebiter Bathysmal Vishap",
	[26050801] = "Bolteater Bathysmal Vishap",
	[26051101] = "Bolteater Bathysmal Vishap",
	[26050802] = "Bolteater Bathysmal Vishap",
	[26060101] = "Electro Cicin",
	[26060201] = "Hydro Cicin",
	[26060301] = "Cryo Cicin",
	[26080101] = "Beisht",
	[26090101] = "Floating Hydro Fungus",
	[26090201] = "Floating Dendro Fungus",
	[26090202] = "Floating Dendro Fungus",
	[26090401] = "Whirling Electro Fungus",
	[26090501] = "Whirling Cryo Fungus",
	[26090701] = "Stretchy Pyro Fungus",
	[26090801] = "Stretchy Anemo Fungus",
	[26090901] = "Stretchy Geo Fungus",
	[26110101] = "Jadeplume Terrorshroom",
	[26120101] = "Winged Dendroshroom",
	[26120201] = "Winged Cryoshroom",
	[26120301] = "Grounded Hydroshroom",
	[20060701] = "Dendro Specter",
	[20060101] = "Hydro Specter",
	[20060201] = "Geo Specter",
	[20060301] = "Anemo Specter",
	[20060401] = "Cryo Specter",
	[20060501] = "Electro Specter",
	[20060601] = "Pyro Specter",
	[21010102] = "Hilichurl",
	[21020102] = "Wooden Shieldwall Mitachurl",
	[21020203] = "Blazing Axe Mitachurl",
	[21020702] = "Crackling Axe Mitachurl",
	[21020302] = "Rock Shieldwall Mitachurl",
	[21020402] = "Frostarm Lawachurl",
	[21020502] = "Stonehide Lawachurl",
	[21020802] = "Thunderhelm Lawachurl",
	[21020602] = "Ice Shieldwall Mitachurl",
	[20010302] = "Anemo Slime",
	[20010402] = "Large Anemo Slime",
	[20010502] = "Electro Slime",
	[20010602] = "Large Electro Slime",
	[20010703] = "Mutant Electro Slime",
	[20010803] = "Cryo Slime",
	[20010903] = "Large Cryo Slime",
	[20011002] = "Hydro Slime",
	[20011102] = "Large Hydro Slime",
	[21010302] = "Wooden Shield Hilichurl Guard",
	[21010702] = "Hilichurl Berserker",
	[21011202] = "Rock Shield Hilichurl Guard",
	[21011402] = "Ice Shield Hilichurl Guard",
	[20011203] = "Pyro Slime",
	[20011302] = "Large Pyro Slime",
	[20011402] = "Geo Slime",
	[20011503] = "Large Geo Slime",
	[22010105] = "Pyro Abyss Mage",
	[22010205] = "Cryo Abyss Mage",
	[22010305] = "Hydro Abyss Mage",
	[22010402] = "Electro Abyss Mage",
	[21030102] = "Hydro Samachurl",
	[21030202] = "Dendro Samachurl",
	[21030302] = "Anemo Samachurl",
	[21030403] = "Geo Samachurl",
	[21030502] = "Cryo Samachurl",
	[21030602] = "Electro Samachurl",
	[24010102] = "Ruin Guard",
	[24010202] = "Ruin Hunter",
	[24010302] = "Ruin Grader",
	[26040105] = "Geovishap",
	[28020901] = "Samurai Dog (Patrol)",
	[28020902] = "Samurai Dog (Combat)",
	[28020903] = "Inu_Shihandai_03",
	[28020304] = "Great Snowboar King",
	[28020309] = "Boar_09",
	[28020301] = "Forest Boar",
	[28020303] = "Snowboar",
	[28020305] = "Frozen Snowboar",
	[28020306] = "Boar_06",
	[28020307] = "Boar_01",
	[28020308] = "Boar_05",
	[28020313] = "Boar_Grass",
	[28020314] = "Boar_Grass_Small",
	[28010101] = "Golden Crab",
	[28010102] = "Sun Crab",
	[28010103] = "Ocean Crab",
	[28010104] = "General Crab",
	[28010105] = "Pale Red Crab",
	[28010106] = "Crab",
	[28020101] = "Snow Fox",
	[28020102] = "Crimson Fox",
	[28020103] = "Gifting Snow Fox",
	[28020104] = "Super-Gifting Snow Fox",
	[28020105] = "Fox_01",
	[28020106] = "Fox_02",
	[28020201] = "Squirrel",
	[28030101] = "Azure Crane",
	[28030103] = "Crane_01",
	[28030102] = "Violet Ibis",
	[28030201] = "Brownwing Falcon",
	[28030202] = "Umbertail Falcon",
	[28030203] = "Lapis Glede",
	[28030204] = "Silkwhite Falcon",
	[28050101] = "Anemo Crystalfly",
	[28050102] = "Geo Crystalfly",
	[28050103] = "Cryo Crystalfly",
	[28050104] = "Electro Crystalfly",
	[28050105] = "Wisp_Tokoyo_01",
	[28050106] = "Wisp_Grass_01",
	[28050301] = "Boltbug_Lightbug_01",
	[28010201] = "Blue Horned Lizard",
	[28010202] = "Red Horned Lizard",
	[28010203] = "Green Horned Lizard",
	[28010204] = "Sunset Loach",
	[28010205] = "Golden Loach",
	[28010206] = "Sunny Loach",
	[28010207] = "Pith Lizard",
	[28010208] = "Lizard_05",
	[28010301] = "Frog",
	[28010302] = "Mud Frog",
	[28010303] = "Blue Frog",
	[28010304] = "Frog_04",
	[28010401] = "Eel_01",
	[28010402] = "Eel_02",
	[28010403] = "Eel_03",
	[28020302] = "Forest Piglet",
	[28030301] = "White Pigeon",
	[28030302] = "Brightcrown Pigeon",
	[28030303] = "Graywing Pigeon",
	[28030304] = "Crimsonflank Pigeon",
	[28030305] = "Black King Pigeon",
	[28030306] = "Duck",
	[28030307] = "White Pigeon",
	[28030308] = "Brightcrown Pigeon",
	[28030309] = "Graywing Pigeon",
	[28030310] = "Crimsonflank Pigeon",
	[28030311] = "Black King Pigeon",
	[28030313] = "Pigeon_Beak_01",
	[28030401] = "Crimson Finch",
	[28030402] = "Golden Finch",
	[28030403] = "Snow Finch",
	[28030404] = "Emerald Finch",
	[28030405] = "Tit_06",
	[28030406] = "Tit_01",
	[28030407] = "Tit_02",
	[28030408] = "Tit_03",
	[28030409] = "Tit_04",
	[28030501] = "Scarletbeak Duck",
	[28030502] = "Emerald Duck",
	[28030503] = "Golden Duck",
	[28030504] = "Wigeon_01",
	[28040101] = "Black-Back Bass",
	[28040102] = "Blue-Fin Bass",
	[28040103] = "Golden Bass",
	[28040104] = "Black-Back Bass",
	[28040105] = "Black-Back Bass",
	[28040106] = "Blue-Fin Bass",
	[28040107] = "Golden Bass",
	[28040108] = "Fish_08",
	[28040201] = "Medaka",
	[28040202] = "Glaze Medaka",
	[28040203] = "Sweet-Flower Medaka",
	[28040204] = "Aizen Medaka",
	[28040205] = "Dawncatcher",
	[28040206] = "Crystalfish",
	[28040301] = "Lunged Stickleback",
	[28040302] = "Betta",
	[28040303] = "Venomspine Fish",
	[28040304] = "Akai Maou",
	[28040305] = "Snowstrider",
	[28040401] = "Golden Koi",
	[28040402] = "Rusty Koi",
	[28040501] = "Brown Shirakodai",
	[28040502] = "Purple Shirakodai",
	[28040503] = "Tea-Colored Shirakodai",
	[28040504] = "Abiding Angelfish",
	[28040505] = "Raimei Angelfish",
	[28040506] = "Moonfin",
	[28040601] = "Pufferfish",
	[28040602] = "Bitter Pufferfish",
	[28040701] = "Fishable_Ray_Stellamarisidae_01_02",
	[28040702] = "Fishable_Ray_Stellamarisidae_01_03",
	[28040703] = "Fishable_Ray_Stellamarisidae_02_01",
	[28040801] = "Fishable_Maritime_Batdiodan_01",
	[28040802] = "Fishable_Maritime_Batdiodan_02",
	[28040803] = "Fishable_Maritime_Batdiodan_03",
	[28040804] = "Fishable_Maritime_Batdiodan_04",
	[28040901] = "Fishable_Maritime_Apsva_01",
	[28040902] = "Fishable_Maritime_Apsva_02",
	[28020401] = "Northland Hound",
	[28020402] = "Forest-Patrol Hound",
	[28020403] = "Shiba",
	[28020404] = "Black-Back Hound",
	[28020405] = "Shiba",
	[28020406] = "Northland Hound (Dog Event Special, Extended LoS Range)",
	[28020407] = "DogPrick_01",
	[28020408] = "DogPrick_02",
	[28020409] = "DogPrick_03",
	[28020410] = "DogPrick_04",
	[28020501] = "Sapphire",
	[28020502] = "Jade-Eyed Cat",
	[28020503] = "Gray Snow Cat",
	[28020504] = "Northland Cat",
	[28020505] = "Tiger-Striped Cat",
	[28020506] = "Sheriff Cat",
	[28020507] = "Black Cat",
	[28020508] = "Sapphire",
	[28020509] = "Gray Snow Cat (Dog Event Special, Extended LoS Range)",
	[28020510] = "Cat_02",
	[28020511] = "Cat_03",
	[28020512] = "Cat_04",
	[28020513] = "Cat_05",
	[28020601] = "Snow Weasel",
	[28020602] = "Red-Tailed Weasel",
	[28020603] = "Boot Weasel",
	[28020604] = "Masked Weasel",
	[28020605] = "Marten_05",
	[28020701] = "Kitsune",
	[28020702] = "Kitsune (Dog Event Special, Extended LoS Range)",
	[28020801] = "Bake-Danuki",
	[28020802] = "Inu_Tanuki_02",
	[28020803] = "Inu_Tanuki_03",
	[28050201] = "Amateur Weasel Thief",
	[28050202] = "Hoarder Weasel Thief",
	[28050203] = "Golden Weasel Thief",
	[28050204] = "Thoarder_Weasel_01",
	[28050211] = "Amateur Weasel Thief",
	[28050212] = "Hoarder Weasel Thief",
	[28050213] = "Golden Weasel Thief",
	[28050221] = "Thoarder_Weasel_01",
	[28050222] = "Thoarder_Weasel_02",
	[28050223] = "Thoarder_Weasel_03",
	[28060101] = "Gator_01",
	[28060102] = "Gator_Strong_01",
	[28060103] = "Gator_01",
	[28060201] = "Panther_01",
	[28060202] = "Panther_Strong_01",
	[28060203] = "Panther_01",
	[28060601] = "Megamoth_Jungle_01",
	[28060602] = "Megamoth_Jungle_02",
	[28060603] = "Megamoth_Jungle_03",
	[28061101] = "Megamoth_Jungle_04",
	[28061201] = "Megamoth_Jungle_05",
	[28061301] = "Megamoth_Jungle_06",
	[28061401] = "Megamoth_Jungle_07",
	[28061402] = "Megamoth_Jungle_08",
	[28060609] = "Megamoth_Jungle_Strong_01",
	[28060610] = "Megamoth_Jungle_04",
	[28060611] = "Megamoth_Jungle_05",
	[28060612] = "Megamoth_Jungle_06",
	[28060613] = "Megamoth_Jungle_07",
	[28060614] = "Megamoth_Jungle_08",
	[28220301] = "Domestic Forest Boar",
	[28220303] = "Domestic Snowboar",
	[28220313] = "Homeworld_Boar_Grass",
	[28220314] = "Homeworld_Boar_Grass_Small",
	[28210101] = "Domestic Golden Crab",
	[28210102] = "Domestic Sun Crab",
	[28210103] = "Domestic Ocean Crab",
	[28210104] = "Domestic General Crab",
	[28210105] = "Domestic Pale Red Crab",
	[28220101] = "Domestic Snow Fox",
	[28220102] = "Domestic Crimson Fox",
	[28220201] = "Domestic Squirrel",
	[28220401] = "Domestic Northland Hound",
	[28220402] = "Domestic Forest-Patrol Hound",
	[28220403] = "Domestic Shiba",
	[28220404] = "Domestic Black-Back Hound",
	[28220501] = "Domestic Sapphire",
	[28220502] = "Domestic Jade-Eyed Cat",
	[28220503] = "Domestic Gray Snow Cat",
	[28220504] = "Domestic Northland Cat",
	[28220505] = "Domestic Tiger-Striped Cat",
	[28220506] = "Domestic Sheriff Cat",
	[28220601] = "Domestic Snow Weasel",
	[28220602] = "Domestic Red-Tailed Weasel",
	[28220603] = "Domestic Boot Weasel",
	[28220605] = "Homeworld_Marten_05",
	[28220701] = "Domestic Kitsune",
	[28220901] = "Domestic Samurai Dog",
	[28230101] = "Domestic Azure Crane",
	[28230102] = "Domestic Violet Ibis",
	[28250101] = "Domestic Anemo Crystalfly",
	[28250102] = "Domestic Geo Crystalfly",
	[28250103] = "Domestic Cryo Crystalfly",
	[28250104] = "Domestic Electro Crystalfly",
	[28250105] = "Homeworld_Wisp_Tokoyo_01",
	[28250106] = "Homeworld_Wisp_Grass_01",
	[28250301] = "Homeworld_Boltbug_Lightbug_01",
	[28210201] = "Domestic Blue Horned Lizard",
	[28210202] = "Domestic Red Horned Lizard",
	[28210203] = "Domestic Green Horned Lizard",
	[28210204] = "Domestic Sunset Loach",
	[28210205] = "Domestic Golden Loach",
	[28210206] = "Domestic Sunny Loach",
	[28210207] = "Domestic Marrow Lizard",
	[28210208] = "Homeworld_Lizard_05",
	[28210301] = "Domestic Frog",
	[28210302] = "Domestic Mud Frog",
	[28210303] = "Domestic Blue Frog",
	[28210304] = "Homeworld_Frog_04",
	[28210401] = "Domestic Adorned Unagi",
	[28210402] = "Homeworld_Eel_02",
	[28210403] = "Domestic Red-Finned Unagi",
	[28230301] = "Domestic White Pigeon",
	[28230302] = "Domestic Brightcrown Pigeon",
	[28230303] = "Domestic Graywing Pigeon",
	[28230304] = "Domestic Crimsonflank Pigeon",
	[28230305] = "Domestic Black King Pigeon",
	[28230306] = "Domestic Crow",
	[28230313] = "Homeworld_Pigeon_Beak_01",
	[28230401] = "Domestic Crimson Finch",
	[28230402] = "Domestic Golden Finch",
	[28230403] = "Domestic Snow Finch",
	[28230404] = "Domestic Emerald Finch",
	[28240201] = "Domestic Medaka",
	[28240202] = "Domestic Glaze Medaka",
	[28240203] = "Domestic Sweet-Flower Medaka",
	[28240204] = "Domestic Aizen Medaka",
	[28240205] = "Domestic Dawncatcher",
	[28240206] = "Domestic Crystalfish",
	[28240301] = "Domestic Lunged Stickleback",
	[28240302] = "Domestic Betta",
	[28240303] = "Domestic Venomspine Fish",
	[28240304] = "Domestic Akai Maou",
	[28240305] = "Domestic Snowstrider",
	[28240401] = "Domestic Golden Koi",
	[28240402] = "Domestic Rusty Koi",
	[28240501] = "Domestic Brown Shirakodai",
	[28240502] = "Domestic Purple Shirakodai",
	[28240503] = "Domestic Tea-Colored Shirakodai",
	[28240504] = "Domestic Abiding Angelfish",
	[28240505] = "Domestic Raimei Angelfish",
	[28240506] = "Domestic Moonfin",
	[28240601] = "Domestic Pufferfish",
	[28240602] = "Domestic Bitter Pufferfish",
	[28240701] = "Homeworld_Fishable_Ray_Stellamarisidae_01_02",
	[28240702] = "Homeworld_Fishable_Ray_Stellamarisidae_01_03",
	[28240801] = "Homeworld_Fishable_Maritime_Batdiodan_01",
	[28240802] = "Homeworld_Fishable_Maritime_Batdiodan_02",
	[28240803] = "Homeworld_Fishable_Maritime_Batdiodan_03",
	[28240804] = "Homeworld_Fishable_Maritime_Batdiodan_04",
	[28240901] = "Homeworld_Fishable_Maritime_Apsva_01",
	[28240902] = "Homeworld_Fishable_Maritime_Apsva_02",
	[31010101] = "Hili_None_01",
	[31020101] = "Brute_None_Shield",
	[31020201] = "Brute_None_Axe",
	[35210101] = "Partner_Eremite_Female_Hatchet_01",
}
return monster_names