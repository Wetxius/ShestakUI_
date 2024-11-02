﻿local T, C, L = unpack(ShestakUI)
if C.misc.quest_auto_button ~= true then return end

----------------------------------------------------------------------------------------
--	The best way to add or delete item is to go at www.wowhead.com, search for a item.
--	Example: Seaforium Bombs -> http://www.wowhead.com/item=46847
--	Take the number ID at the end of the URL, and add it to the list
----------------------------------------------------------------------------------------
T.ABItems = {
	-- Daily Quests
	[32971] = true,		-- Water Bucket
	[38689] = true,		-- Chicken Net
	[52507] = true,		-- Stardust No.2
	[62829] = true,		-- Magnetized Scrap Collector
	[63351] = true,		-- Tahret Dynasty Mallet
	[69235] = true,		-- Fang of the Wolf
	[69240] = true,		-- Enchanted Salve
	[69981] = true,		-- Ironforge Rations
	[71978] = true,		-- Darkmoon Bandage
	[77475] = true,		-- Stack of Mantras
	[78947] = true,		-- Silken Rope
	[79885] = true,		-- Barrel of Fireworks
	[80127] = true,		-- Shadelight Truffle Spores
	[80403] = true,		-- Angler's Fishing Spear
	[80599] = true,		-- Goblin Fishing Bomb
	[82346] = true,		-- Pot of Fire
	[82381] = true,		-- Yak's Milk Flask
	[82807] = true,		-- Shado-Pan Dragon Gun
	[83134] = true,		-- Bronze Claws
	[84762] = true,		-- Highly Explosive Yaungol Oil
	[85884] = true,		-- Sonic Emitter
	[86532] = true,		-- Bag of Shado-Pan Gas Bombs
	[87394] = true,		-- Sonic Disruption Fork
	[87841] = true,		-- Korven's Experimental Grenades
	[92019] = true,		-- The Bilgewater Molotov
	[93180] = true,		-- Re-Configured Remote
	[93668] = true,		-- Saur Fetish
	[93751] = true,		-- Blessed Torch
	[93761] = true,		-- Arcane Emancipator
	[93806] = true,		-- Resonance Siphon
	-- Seaforium
	[46847] = true,		-- Seaforium Bombs
	[47030] = true,		-- Huge Seaforium Bombs
	-- Other
	[45072] = true,		-- Brightly Colored Egg (Noblegarden)
	-- Legion
	[118330] = true,	-- Pile of Weapons
	[122100] = true,	-- Soul Gem
	[127030] = true,	-- Granny's Flare Grenades
	[127295] = true,	-- Blazing Torch
	[128651] = true,	-- Critter Hand Cannon
	[128772] = true,	-- Branch of the Runewood
	[129161] = true,	-- Stormforged Horn
	[129725] = true,	-- Smoldering Torch
	[131931] = true,	-- Khadgar's Wand
	[133756] = true,	-- Fresh Mound of Flesh
	[133882] = true,	-- Trap Rune
	[133897] = true,	-- Telemancy Beacon
	[133925] = true,	-- Fel Lash
	[133999] = true,	-- Inert Crystal
	[136605] = true,	-- Solendra's Compassion
	[137299] = true,	-- Nightborne Spellblad
	[138146] = true,	-- Rediant Ley Crystal
	[138965] = true,	-- Wand of Siphoning
	[140916] = true,	-- Satchel of Locklimb Powder
	[142509] = true,	-- Withered Targeting Orb
	[128329] = true,	-- Depleted Leyflame Burner
	[130260] = true,	-- Thaedris' Elixir
	[140257] = true,	-- Advanced Telemancy Beacon
	[142401] = true,	-- Telemancy Orbs
	-- BfA
	[166905] = true,	-- Hunting Knife
	[168183] = true,	-- Rare Metal Collector
	[168253] = true,	-- Fathom Hook
	[168482] = true,	-- Plug the Geysers
	-- Shadowlands
	[177836] = true,	-- Wingpierce Javelin
	[180280] = true,	-- Soulforged Core
	[183045] = true,	-- Korinna's Allaying Crook
	[180170] = true,	-- Pulsing Animacone
	[180876] = true,	-- Aqueous Material Accumulator
	[188697] = true,	-- Kinematic Micro-Life Recalibrator
	-- Profession
	-- https://www.wowhead.com/items/miscellaneous/other?filter=166:98:111;11:1:2;0:0:1
	-- https://www.wowhead.com/items/miscellaneous/other?filter=107;0;increase+your+Khaz+Algar
	[222546] = true,
	[222547] = true,
	[222548] = true,
	[222549] = true,
	[222550] = true,
	[222551] = true,
	[222552] = true,
	[222553] = true,
	[222554] = true,
	[222649] = true,
	[224007] = true,
	[224023] = true,
	[224024] = true,
	[224036] = true,
	[224038] = true,
	[224050] = true,
	[224052] = true,
	[224053] = true,
	[224054] = true,
	[224055] = true,
	[224056] = true,
	[224264] = true,
	[224265] = true,
	[224583] = true,
	[224584] = true,
	[224645] = true,
	[224647] = true,
	[224648] = true,
	[224651] = true,
	[224652] = true,
	[224653] = true,
	[224654] = true,
	[224655] = true,
	[224656] = true,
	[224657] = true,
	[224658] = true,
	[224780] = true,
	[224781] = true,
	[224782] = true,
	[224807] = true,
	[224817] = true,
	[224818] = true,
	[224835] = true,
	[224838] = true,
	[225220] = true,
	[225221] = true,
	[225222] = true,
	[225223] = true,
	[225224] = true,
	[225225] = true,
	[225226] = true,
	[225227] = true,
	[225228] = true,
	[225229] = true,
	[225230] = true,
	[225231] = true,
	[225232] = true,
	[225233] = true,
	[225234] = true,
	[225235] = true,
	[226265] = true,
	[226266] = true,
	[226267] = true,
	[226268] = true,
	[226269] = true,
	[226270] = true,
	[226271] = true,
	[226272] = true,
	[226276] = true,
	[226277] = true,
	[226278] = true,
	[226279] = true,
	[226280] = true,
	[226281] = true,
	[226282] = true,
	[226283] = true,
	[226284] = true,
	[226285] = true,
	[226286] = true,
	[226287] = true,
	[226288] = true,
	[226289] = true,
	[226290] = true,
	[226291] = true,
	[226292] = true,
	[226293] = true,
	[226294] = true,
	[226295] = true,
	[226296] = true,
	[226297] = true,
	[226298] = true,
	[226299] = true,
	[226300] = true,
	[226301] = true,
	[226302] = true,
	[226303] = true,
	[226304] = true,
	[226305] = true,
	[226306] = true,
	[226307] = true,
	[226308] = true,
	[226309] = true,
	[226310] = true,
	[226311] = true,
	[226312] = true,
	[226313] = true,
	[226314] = true,
	[226315] = true,
	[226316] = true,
	[226317] = true,
	[226318] = true,
	[226319] = true,
	[226320] = true,
	[226321] = true,
	[226322] = true,
	[226323] = true,
	[226324] = true,
	[226325] = true,
	[226326] = true,
	[226327] = true,
	[226328] = true,
	[226329] = true,
	[226330] = true,
	[226331] = true,
	[226332] = true,
	[226333] = true,
	[226334] = true,
	[226335] = true,
	[226336] = true,
	[226337] = true,
	[226338] = true,
	[226339] = true,
	[226340] = true,
	[226341] = true,
	[226342] = true,
	[226343] = true,
	[226344] = true,
	[226345] = true,
	[226346] = true,
	[226347] = true,
	[226348] = true,
	[226349] = true,
	[226350] = true,
	[226351] = true,
	[226352] = true,
	[226353] = true,
	[226354] = true,
	[226355] = true,
	[227407] = true,
	[227408] = true,
	[227409] = true,
	[227410] = true,
	[227411] = true,
	[227412] = true,
	[227413] = true,
	[227414] = true,
	[227415] = true,
	[227416] = true,
	[227417] = true,
	[227418] = true,
	[227419] = true,
	[227420] = true,
	[227421] = true,
	[227422] = true,
	[227423] = true,
	[227424] = true,
	[227425] = true,
	[227426] = true,
	[227427] = true,
	[227428] = true,
	[227429] = true,
	[227430] = true,
	[227431] = true,
	[227432] = true,
	[227433] = true,
	[227434] = true,
	[227435] = true,
	[227436] = true,
	[227437] = true,
	[227438] = true,
	[227439] = true,
	[227659] = true,
	[227661] = true,
	[227662] = true,
	[227667] = true,
	[228724] = true,
	[228725] = true,
	[228726] = true,
	[228727] = true,
	[228728] = true,
	[228729] = true,
	[228730] = true,
	[228731] = true,
	[228732] = true,
	[228733] = true,
	[228734] = true,
	[228735] = true,
	[228736] = true,
	[228737] = true,
	[228738] = true,
	[228739] = true,
	[228773] = true,
	[228774] = true,
	[228775] = true,
	[228776] = true,
	[228777] = true,
	[228778] = true,
	[228779] = true,
}

T.ABItemsIgnore = {
	-- [itemID] = true,	-- Item name to ignore
	[223988] = true,	-- Dalaran Hearthstone
	[227669] = true,	-- Teleportation Scroll
}