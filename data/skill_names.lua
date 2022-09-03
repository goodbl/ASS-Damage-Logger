local skill_names = {
	[10003] = "Focus Item",
	[10011] = "5 Hit combo",
	[10111] = "Skill_A_01",
	[10012] = "Kate Test Skill",
	[10013] = "Kamisato Art: Senho",
	[10014] = "Kate - Electric Current",
	[10015] = "Skill_E_Ayaka",
	[10016] = "Skill_E_Qin",
	[10017] = "Fiery Rain",
	[10018] = "Kamisato Art: Hyouka",
	[10019] = "Kamisato Art: Soumetsu",
	[10020] = "Water",
	[10021] = "Skill_E_Ayaka",
	[10022] = "Test_CreateSharkTorpedo",
	[10023] = "Test_CreateSteamBang",
	[10024] = "Normal Attack: Kamisato Art - Kabuki",
	[10031] = "Normal Attack: Favonius Bladework",
	[10032] = "Explosive Puppet",
	[10033] = "Gale Blade",
	[10034] = "Dandelion Breeze",
	[10035] = "Infiltrating Bait",
	[10036] = "Jean Party System",
	[10037] = "Avatar_Player_FlyingBomber",
	[10038] = "Btn_Recon_Bait_Beans",
	[10041] = "Normal Attack: Sharpshooter",
	[10042] = "Avatar_Ambor_AimPressShoot",
	[10043] = "Skill_A_02",
	[10044] = "Avatar_GateOfAmbor_TriggerBullet",
	[10051] = "Skill_A_01",
	[10052] = "Skill_A_01",
	[10053] = "Water",
	[10054] = "Normal Attack: Past Memories",
	[10055] = "Normal Attack: Past Memories",
	[10056] = "Water",
	[10057] = "Avatar_Player_ExtraAttack",
	[10058] = "Avatar_Player_ExtraAttack",
	[10059] = "Avatar_Player_ExtraAttack",
	[10060] = "Normal Attack: Lightning Touch",
	[10061] = "Violet Arc",
	[10062] = "Lightning Rose",
	[10063] = "Character",
	[10064] = "Character",
	[10065] = "Character",
	[10066] = "Skill_E_Kate",
	[10067] = "Palm Vortex",
	[10068] = "Gust Surge",
	[10069] = "Skill_A_01",
	[10070] = "Normal Attack: Whisper of Water",
	[10071] = "Let the Show Begin♪",
	[10072] = "Shining Miracle♪",
	[10073] = "Normal Attack: Ceremonial Bladework",
	[10074] = "Frostgnaw",
	[10075] = "Glacial Waltz",
	[10076] = "Avatar_Barbara_ReBorn",
	[10077] = "Starfell Sword",
	[10078] = "Wake of Earth",
	[10079] = "Avatar_Barbara_ReBornEffect_01",
	[10080] = "Avatar_Barbara_ReBornEffect_02",
	[10081] = "Avatar_Keaya_IceShield",
	[10082] = "Avatar_Barbara_Trigger_WaterBall",
	[10083] = "Avatar_Lsai_TeamTalent_Skill",
	[10117] = "Razorgrass Blade",
	[10118] = "Surgent Manifestation",
	[10160] = "Normal Attack: Tempered Sword",
	[10161] = "Searing Onslaught",
	[10162] = "Searing Onslaught",
	[10163] = "Searing Onslaught",
	[10165] = "Dawn",
	[10166] = "Diluc_EnterSkill",
	[10201] = "Normal Attack: Steel Fang",
	[10202] = "Claw and Thunder",
	[10203] = "Lightning Fang",
	[10204] = "Skill",
	[10211] = "Skill_A_02",
	[10221] = "Normal Attack: Divine Marksmanship",
	[10222] = "Avatar_Venti_AimPressShoot",
	[10223] = "Switch Aiming Mode",
	[10224] = "Skyward Sonnet",
	[10225] = "Wind's Grand Ode",
	[10231] = "Normal Attack: Dough-Fu",
	[10232] = "Guoba Attack",
	[10235] = "Pyronado",
	[10241] = "Normal Attack: Oceanborne",
	[10242] = "Tidecaller",
	[10245] = "Stormbreaker",
	[20000] = "Main_AimActive",
	[10251] = "Avatar_Aquaria_PressShoot",
	[10252] = "Avatar_Aquaria_AimPressShoot",
	[10253] = "Switch Aiming Mode",
	[10254] = "Skill_S_Ayaka_01",
	[10255] = "Skill_E_Ayaka",
	[10261] = "Normal Attack: Whirlwind Thrust",
	[10262] = "Lemniscatic Wind Cycling",
	[10263] = "Skill_S_Xiao_01",
	[10264] = "Skill_A_03",
	[10265] = "Bane of All Evil",
	[10271] = "Normal Attack: Sparkling Scatter",
	[10272] = "Jade Screen",
	[10273] = "Skill_S_Ningguang_02",
	[10274] = "Starshatter",
	[10275] = "Avatar_Ningguang_Trigger_ElementalArt_CD",
	[10281] = "Shiro Maiden normal attack",
	[10282] = "Skill",
	[10283] = "Skill_S_Ayaka_01",
	[10291] = "Normal Attack: Kaboom!",
	[10292] = "Jumpy Dumpty",
	[10295] = "Sparks 'n' Splash",
	[10300] = "Skill",
	[10301] = "Normal Attack: Rain of Stone",
	[10302] = "Dominus Lapidis",
	[10303] = "Planet Befall",
	[10311] = "Normal Attack: Bolts of Downfall",
	[10312] = "Nightrider",
	[10313] = "Midnight Phantasmagoria",
	[10314] = "Avatar_Fischl_AimPressShoot",
	[10315] = "Skill_A_02",
	[10316] = "Skill_S_Fischl_02",
	[10321] = "Normal Attack: Strike of Fortune",
	[10322] = "Passion Overload",
	[10323] = "Fantastic Voyage",
	[10331] = "Normal Attack: Cutting Torrent",
	[10332] = "Foul Legacy: Raging Tide",
	[10333] = "Havoc: Obliteration",
	[10334] = "Avatar_Tartaglia_AimPressShoot",
	[10335] = "Skill_A_02",
	[10336] = "Avatar_Tartaglia_Gandalfr_TriggerOff",
	[10337] = "Avatar_Tartaglia_PressShoot",
	[10341] = "Normal Attack: Favonius Bladework - Maid",
	[10342] = "Breastplate",
	[10343] = "Sweeping Time",
	[10344] = "Noelle's Passive Talent (The Shield)",
	[10351] = "Normal Attack: Ancient Sword Art",
	[10352] = "Adeptus Art: Herald of Frost",
	[10353] = "Adeptus Art: Preserver of Fortune",
	[10355] = "Avatar_Qiqi_Revive",
	[10371] = "Normal Attack: Liutian Archery",
	[10372] = "Trail of the Qilin",
	[10373] = "Celestial Shower",
	[10374] = "Avatar_Ganyu_AimPressShoot",
	[11301] = "Avatar_Beidou_ExtraAttack",
	[11302] = "Skill_S_Ambor_01",
	[11305] = "Skill_E_Beidou_01",
	[10256] = "Skill_S_Ayaka_01",
	[10257] = "Skill_S_Ayaka_01",
	[10258] = "Skill_S_Ayaka_01",
	[10259] = "Cold Virus",
	[10362] = "Skill_E_Ayaka",
	[10363] = "Skill_E_Ayaka",
	[10364] = "Avatar_Player_Electric_ElementalArt_Reverse_Trigger",
	[10365] = "Skill_E_Ayaka",
	[11371] = "Skill_A_02",
	[11372] = "Skill_S_Razor_01",
	[11373] = "Skill_E_Razor_01",
	[11374] = "Skill_A_02",
	[11375] = "Skill_A_02",
	[10381] = "Normal Attack: Guhua Style",
	[10382] = "Guhua Sword: Fatal Rainscreen",
	[10385] = "Guhua Sword: Raincutter",
	[10386] = "Normal Attack: Favonius Bladework - Weiss",
	[10387] = "Abiogenesis: Solar Isotoma",
	[10388] = "Rite of Progeniture: Tectonic Tide",
	[10391] = "Normal Attack: Kätzlein Style",
	[10392] = "Icy Paws",
	[10393] = "Avatar_Diona_AimPressShoot",
	[10394] = "Skill_A_02",
	[10395] = "Signature Mix",
	[10401] = "Normal Attack: Demonbane",
	[10402] = "Spirit Blade: Chonghua's Layered Frost",
	[10403] = "Spirit Blade: Cloud-Parting Star",
	[10411] = "Normal Attack: Ripple of Fate",
	[10412] = "Mirror Reflection of Doom",
	[10413] = "Illusory Torrent",
	[10415] = "Stellaris Phantasm",
	[10421] = "Normal Attack: Yunlai Swordsmanship",
	[10422] = "Stellar Restoration",
	[10423] = "Stellar Restoration",
	[10425] = "Starward Sword",
	[10431] = "Normal Attack: Wind Spirit Creation",
	[10432] = "Astable Anemohypostasis Creation - 6308",
	[10433] = "Skill_S_Sucrose_02",
	[10434] = "Skill_S_Sucrose_02",
	[10435] = "Forbidden Creation - Isomer 75 / Type II",
	[10441] = "Normal Attack: Dance on Fire",
	[10442] = "Sweeping Fervor",
	[10443] = "Riff Revolution",
	[10451] = "Normal Attack: Spear of the Church",
	[10452] = "Ravaging Confession",
	[10453] = "Rites of Termination",
	[10461] = "Normal Attack: Secret Spear of Wangsheng",
	[10462] = "Guide to Afterlife",
	[10463] = "Spirit Soother",
	[10464] = "Avatar_Hutao_Constellation_Limbo_Trigger",
	[10471] = "Normal Attack: Garyuu Bladework",
	[10472] = "Chihayaburu",
	[10473] = "Chihayaburu",
	[10474] = "Plunging Attack: Midare Ranzan",
	[10475] = "Kazuha Slash",
	[10481] = "Normal Attack: Seal of Approval",
	[10482] = "Signed Edict",
	[10485] = "Done Deal",
	[10491] = "Normal Attack: Firework Flare-Up",
	[10492] = "Niwabi Fire-Dance",
	[10493] = "Avatar_Yoimiya_AimPressShoot",
	[10495] = "Ryuukin Saxifrage",
	[10501] = "Normal Attack: Swiftshatter Spear",
	[10502] = "Blazing Blessing",
	[10505] = "Crimson Ooyoroi",
	[10511] = "Normal Attack: Favonius Bladework - Edel",
	[10512] = "Icetide Vortex",
	[10515] = "Glacial Illumination",
	[10521] = "Normal Attack: Origin",
	[10522] = "Transcendence: Baleful Omen",
	[10525] = "Secret Art: Musou Shinsetsu",
	[10531] = "Normal Attack: Shuumatsuban Ninja Blade",
	[10532] = "Yoohoo Art: Fuuin Dash",
	[10533] = "Yoohoo Art: Fuuin Dash",
	[10535] = "Yoohoo Art: Mujina Flurry",
	[10541] = "Normal Attack: The Shape of Water",
	[10542] = "Kurage's Oath",
	[10545] = "Nereid's Ascension",
	[10551] = "Normal Attack: Ripping Fang Fletching",
	[10552] = "Inuzaka All-Round Defense",
	[10553] = "Avatar_Gorou_AimPressShoot",
	[10554] = "Skill_A_02",
	[10555] = "Juuga: Forward Unto Victory",
	[10561] = "Normal Attack: Tengu Bowmanship",
	[10562] = "Tengu Stormcall",
	[10563] = "Avatar_Sara_AimPressShoot",
	[10564] = "Skill_A_02",
	[10565] = "Subjugation: Koukou Sendou",
	[10571] = "Normal Attack: Fight Club Legend",
	[10572] = "Masatsu Zetsugi: Akaushi Burst!",
	[10575] = "Royal Descent: Behold, Itto the Evil!",
	[10581] = "Normal Attack: Spiritfox Sin-Eater",
	[10582] = "Yakan Evocation: Sesshou Sakura",
	[10585] = "Great Secret Art: Tenko Kenshin",
	[10591] = "Normal Attack: Fudou Style Martial Arts",
	[10592] = "Heartstopper Strike",
	[10595] = "Windmuster Kick",
	[10602] = "Lightning Blade",
	[10605] = "Bellowing Thunder",
	[10606] = "Normal Attack: Stealthy Bowshot",
	[10607] = "Lingering Lifeline",
	[10608] = "Avatar_Yelan_AimPressShoot",
	[10609] = "Skill_S_Yelan_02",
	[10610] = "Depth-Clarion Dice",
	[10621] = "Normal Attack: Rapid Fire",
	[10622] = "Frozen Wilds",
	[10623] = "Avatar_Aloy_AimPressShoot",
	[10624] = "Skill_A_02",
	[10631] = "Normal Attack: Dawnstar Piercer",
	[10632] = "Spring Spirit Summoning",
	[10635] = "Divine Maiden's Deliverance",
	[10625] = "Prophecies of Dawn",
	[10641] = "Normal Attack: Cloud-Grazing Strike",
	[10642] = "Opening Flourish",
	[10643] = "Cliffbreaker's Banner",
	[10651] = "Normal Attack: Shinobu's Shadowsword",
	[10652] = "Sanctifying Ring",
	[10655] = "Gyoei Narukami Kariyama Rite",
	[10656] = "Avatar_Shinobu_Constellation6_Limbo_Trigger",
	[10657] = "Avatar_Shinobu_Constellation6_Limbo_Trigger",
	[10661] = "Normal Attack: Kamisato Art - Marobashi",
	[10662] = "Kamisato Art: Kyouka",
	[10663] = "Avatar_Ayato_KendoPose_Click",
	[10665] = "Kamisato Art: Suiyuu",
	[10671] = "Normal Attack: Supplicant's Bowmanship",
	[10672] = "Floral Brush",
	[10675] = "Trump-Card Kitty",
	[10674] = "Avatar_Ganyu_AimPressShoot",
	[10681] = "Normal Attack: Marvelous Sword-Dance (Modified)",
	[10682] = "Spirit-Warding Lamp: Troubleshooter Cannon",
	[10685] = "Alcazarzaray's Exactitude",
	[10691] = "Normal Attack: Khanda Barrier-Buster",
	[10692] = "Vijnana-Phala Mine",
	[10693] = "Tighnari Hold/Aim Mode",
	[10695] = "Fashioner's Tanglevine Shaft",
	[20001] = "Wind Cannon",
	[20002] = "Wind Cannon",
	[20011] = "Avatar_Player_GlidingChallenge_AirDash_Forward",
	[20012] = "Avatar_Player_GlidingChallenge_AirDash_Upward",
	[20020] = "ActivityAbility_Endora_Bubble_AimPress",
	[20021] = "ActivityAbility_LudiHarpastum_Serve",
	[20022] = "ActivityAbility_LudiHarpastum_Hit",
	[20023] = "ActivityAbility_LudiHarpastum_Bomb_AimPress",
	[20024] = "ActivityAbility_LudiHarpastum_Bomb_AimPress",
	[20025] = "ActivityAbility_LudiHarpastum_Bomb_AimPress",
	[20026] = "ActivityAbility_LudiHarpastum_Bomb_Forbid",
	[20027] = "ActivityAbility_LudiHarpastum_Bomb_Forbid",
	[20028] = "ActivityAbility_LudiHarpastum_Bomb_Forbid",
	[20029] = "ActivityAbility_LudiHarpastum_Hit_02",
	[20030] = "Skill_S_Monster_Shougun_EyeStrip",
	[20031] = "Skill_E_Monster_Shougun_EyeStrip",
	[20032] = "Temari Game: Place Ball",
	[20035] = "Skill_S_LunaRiteQuest_BanSkill",
	[20036] = "Skill_S_SummerTimeV2Quest_BanSkill",
	[20037] = "Skill_E_SummerTimeV2Quest_BanSkill",
	[20040] = "ActivityAbility_CatchAnimal_Shoot",
	[20041] = "ActivityAbility_CatchAnimal_Shoot_DogGame",
	[20042] = "ActivityAbility_CatchAnimal_Shoot_Test",
	[20100] = "Capture!",
	[20101] = "Capture!",
	[20110] = "Mysterious Hunch",
	[20111] = "Sensor Aura",
	[20120] = "Hunter's Intuition",
	[20121] = "Insight",
	[20122] = "Imprisoning Curse",
	[20200] = "Disguise",
	[20201] = "Disguise",
	[20210] = "Transparency",
	[20212] = "Transparency",
	[20211] = "Lay Bait",
	[20213] = "Lay Bait",
	[20220] = "Starstep",
	[20202] = "Disguise",
	[20203] = "Disguise",
	[20214] = "Lay Bait",
	[20215] = "Lay Bait",
	[20400] = "Capture!",
	[20401] = "Capture!",
	[20410] = "Mysterious Hunch",
	[20411] = "Sensor Aura",
	[20420] = "Hunter's Intuition",
	[20421] = "Insight",
	[20422] = "Imprisoning Curse",
	[20500] = "Disguise",
	[20501] = "Disguise",
	[20510] = "Transparency",
	[20512] = "Transparency",
	[20511] = "Lay Bait",
	[20513] = "Lay Bait",
	[20520] = "Starstep",
	[20311] = "Avatar_Common_Fishing_Cast",
	[20312] = "Btn_Fishing_Battle",
	[20313] = "Avatar_Common_Fishing_Battle",
	[20314] = "Btn_Fishing_Pull",
	[20315] = "Avatar_Common_Fishing_RequestQuit",
	[20316] = "Avatar_Common_Fishing_SelectBait",
	[20320] = "ActivityAbility_Avatar_Blocking",
	[20330] = "ActivityAbility_Lannaluo_Shoot",
	[20331] = "ActivityAbility_Lannaluo_Skill",
	[10384] = "Btn_Recon_Bait",
	[100540] = "Normal Attack: Past Memories",
	[100541] = "Skill_A_01",
	[100542] = "Skill_A_01",
	[100543] = "Normal Attack: Foreign Ironwind",
	[100544] = "Skill_A_01",
	[100545] = "Normal Attack: Foreign Rockblade",
	[100546] = "Normal Attack: Foreign Thundershock",
	[100547] = "Normal Attack: Foreign Fieldcleaver",
	[100550] = "Normal Attack: Past Memories",
	[100551] = "Skill_A_01",
	[100552] = "Skill_A_01",
	[100553] = "Normal Attack: Foreign Ironwind",
	[100554] = "Skill_A_01",
	[100555] = "Normal Attack: Foreign Rockblade",
	[100556] = "Normal Attack: Foreign Thundershock",
	[100557] = "Normal Attack: Foreign Fieldcleaver",
	[5002010] = "Skill_A_01",
	[5003010] = "Skill_A_01",
	[5005010] = "Skill_A_01",
	[5005020] = "Skill_A_01",
	[5005030] = "Skill_A_01",
	[5005040] = "Skill_A_01",
	[5005050] = "Skill_A_01",
	[5005060] = "Skill_A_01",
	[5005070] = "Skill_A_01",
	[5005080] = "Skill_A_01",
	[5006010] = "Skill_A_Catalyst_MD",
	[5007010] = "Skill_A_01",
	[5007020] = "Skill_A_01",
	[5007030] = "Skill_A_01",
	[5007040] = "Skill_A_01",
	[5007050] = "Skill_A_01",
	[5007060] = "Skill_A_01",
	[5007070] = "Skill_A_01",
	[5007080] = "Skill_A_01",
	[5014010] = "Skill_A_Catalyst_MD",
	[5015010] = "Skill_A_01",
	[5016010] = "Skill_A_04",
	[5020010] = "Skill_A_04",
	[5021010] = "Skill_A_02",
	[5022010] = "Skill_A_02",
	[5023010] = "Skill_A_03",
	[5024010] = "Skill_A_04",
	[5025010] = "Skill_A_01",
	[5026010] = "Skill_A_03",
	[5027010] = "Skill_A_Catalyst_MD",
	[5029010] = "Skill_A_Catalyst_MD",
	[5030010] = "Skill_A_03",
	[5031010] = "Skill_A_02",
	[5032010] = "Skill_A_01",
	[5033010] = "Skill_A_02",
	[5034010] = "Skill_A_04",
	[5035010] = "Skill_A_01",
	[5036010] = "Skill_A_04",
	[5037010] = "Skill_A_02",
	[5038010] = "Skill_A_01",
	[5039010] = "Skill_A_02",
	[5041010] = "Skill_A_Catalyst_MD",
	[5042010] = "Skill_A_01",
	[5043010] = "Skill_A_Catalyst_MD",
	[5044010] = "Skill_A_04",
	[5045010] = "Skill_A_03",
	[5046010] = "Skill_A_03",
	[5047010] = "Skill_A_01",
	[5048010] = "Skill_A_Catalyst_MD",
	[5049010] = "Skill_A_02",
	[5050010] = "Skill_A_03",
	[5051010] = "Skill_A_04",
	[5052010] = "Skill_A_03",
	[5053010] = "Skill_A_04",
	[5054010] = "Skill_A_Catalyst_MD",
	[5055010] = "Skill_A_02",
	[5056010] = "Skill_A_02",
	[5058010] = "Skill_A_Catalyst_MD",
	[5057010] = "Skill_A_04",
	[5059010] = "Skill_A_Catalyst_MD",
	[5060010] = "Skill_A_02",
	[5062010] = "Skill_A_02",
	[5063010] = "Skill_A_03",
	[5064010] = "Skill_A_03",
	[5065010] = "Skill_A_01",
	[5066010] = "Skill_A_01",
	[5067010] = "Skill_A_02",
	[5068010] = "Skill_A_04",
	[5069010] = "Skill_A_02",
}
return skill_names