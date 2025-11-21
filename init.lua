mypaint_wood = {}

mypaint_wood.colors = {
	{"black",      "Black",      "#000000"},
	{"blue",       "Blue",       "#2000c9"},
	{"brown",      "Brown",      "#954c05"},
	{"cyan",       "Cyan",       "#01ffd8"},
	{"darkgreen", "Dark Green",  "#005b07"},
	{"darkgrey",  "Dark Grey",   "#303030"},
	{"green",      "Green",      "#61ff01"},
	{"grey",       "Grey",       "#5b5b5b"},
	{"magenta",    "Magenta",    "#ff05bb"},
	{"orange",     "Orange",     "#ff8401"},
	{"pink",       "Pink",       "#ff65b5"},
	{"red",        "Red",        "#ff0000"},
	{"violet",     "Violet",     "#ab23b0"},
	{"white",      "White",      "#ffffff"},
	{"yellow",     "Yellow",     "#e3ff00"},
}
if core.get_modpath("mydye") then
	mypaint_wood.colors = {
	{"black",      	"Black",      		"#000000"},
	{"blue",       	"Blue",       		"#2000c9"},
	{"brown",     	"Brown",      		"#954c05"},
	{"cyan",      	"Cyan",       		"#01ffd8"},
	{"darkgreen", 	"Dark Green",  		"#005b07"},
	{"darkgrey",  	"Dark Grey",   		"#303030"},
	{"green",     	"Green",      		"#61ff01"},
	{"grey",       	"Grey",       		"#5b5b5b"},
	{"magenta",    	"Magenta",    		"#ff05bb"},
	{"orange",     	"Orange",     		"#ff8401"},
	{"pink",      	"Pink",       		"#ff65b5"},
	{"red",        	"Red",        		"#ff0000"},
	{"violet",     	"Violet",     		"#ab23b0"},
	{"white",      	"White",      		"#ffffff"},
	{"yellow",     	"Yellow",     		"#e3ff00"},
	{"peachpuff",	"Peachpuff", 		"#FFDAB9"},
	{"navy",		"Navy", 			"#000080"},
	{"coral",		"Coral", 			"#FF7F50"},
	{"khaki",		"Khaki", 			"#F0E68C"},
	{"lime",		"Lime", 			"#00FF00"},
	{"light_pink",	"Light Pink", 		"#FFB6C1"},
	{"light_grey",	"Light Grey", 		"#D3D3D3"},
	{"purple",		"Purple", 			"#800080"},
	{"maroon",		"Maroon", 			"#800000"},
	{"aquamarine",	"Aqua Marine", 		"#7FFFD4"},
	{"chocolate",	"Chocolate", 		"#D2691E"},
	{"crimson",		"Crimson", 			"#DC143C"},
	{"olive",		"Olive", 			"#808000"},
	{"white_smoke",	"White Smoke", 		"#F5F5F5"},
	{"mistyrose",	"Misty Rose", 		"#FFE4E1"},
	{"orchid",		"Orchid", 			"#DA70D6"},
	}
end

local paintables = {
	"default:wood","default:junglewood","default:pine_wood","default:aspen_wood","default:acacia_wood",
	"moretrees:apple_tree_planks","moretrees:beech_planks","moretrees:oak_planks","moretrees:sequoia_planks", "moretrees:birch_planks", 
	"moretrees:palm_planks", "moretrees:spruce_planks","moretrees:willow_planks","moretrees:rubber_tree_planks","moretrees:fir_planks", 
	"moretrees:poplar_planks","moretrees:date_palm_planks","moretrees:cedar_planks",
	"ethereal:willow_wood","ethereal:redwood_wood","ethereal:frost_wood","ethereal:yellow_wood","ethereal:palm_wood", 
	"ethereal:banana_wood","ethereal:birch_wood","ethereal:cedar_planks", "ethereal:poplar_planks", "ethereal:bamboo_block",
	"ethereal:olive_wood"
}


for _, entry in ipairs(mypaint_wood.colors) do
	local color = entry[1]
	local desc = entry[2]
	local paint = "^[colorize:"..entry[3]..":150"

core.register_node(":default:wood_" .. color, {
	description = desc .. " Wood",
	tiles = {"default_wood.png".. paint},
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2,cracky = 2, not_in_creative_inventory=1},
	sounds = default.node_sound_wood_defaults(),
})
core.register_node(":default:pine_wood_" .. color, {
	description = desc .. " Pine Wood",
	tiles = {"default_pine_wood.png".. paint},
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2,cracky = 2, not_in_creative_inventory=1},
	sounds = default.node_sound_wood_defaults(),
})
core.register_node(":default:junglewood_" .. color, {
	description = desc .. " Jungle Wood",
	tiles = {"default_junglewood.png".. paint},
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2,cracky = 2, not_in_creative_inventory=1},
	sounds = default.node_sound_wood_defaults(),
})
core.register_node(":default:aspen_wood_" .. color, {
	description = desc .. " Aspen Wood",
	tiles = {"default_aspen_wood.png".. paint},
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2,cracky = 2, not_in_creative_inventory=1},
	sounds = default.node_sound_wood_defaults(),
})
core.register_node(":default:acacia_wood_" .. color, {
	description = desc .. " Acacia Wood",
	tiles = {"default_acacia_wood.png".. paint},
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2,cracky = 2, not_in_creative_inventory=1},
	sounds = default.node_sound_wood_defaults(),
})

if core.get_modpath("moretrees") then
	local moretrees_slopes = {   --Material , Description , Item, Image
		{"apple_tree" ,"Apple Plank" ,       "moretrees:apple_tree_planks",      "apple_tree"},
		{"beech",    "Beech Plank",          "moretrees:beech_planks",      "beech"},
		{"oak",	     "Oak Plank",            "moretrees:oak_planks",        "oak"},
		{"sequoia",  "Giant Sequoia Plank",  "moretrees:sequoia_planks",    "sequoia"},
		{"birch",    "Birch Plank",          "moretrees:birch_planks",      "birch"},
		{"palm",     "Palm Plank",           "moretrees:palm_planks",       "palm"},
		{"spruce",   "Spruce Plank",         "moretrees:spruce_planks",     "spruce"},
		{"willow",   "Willow Plank",         "moretrees:willow_planks",     "willow"},
		{"rubber_tree","Rubber Plank",       "moretrees:rubber_tree_planks","rubber_tree"},
		{"fir",	     "Douglas Fir Plank",    "moretrees:fir_planks",        "fir"},
		{"poplar",	 "Poplar Planks",		 "moretrees:poplar_planks", 	"poplar"},
		{"date_palm","Date Palm Plank",      "moretrees:date_palm_planks",  "date_palm"},
		{"cedar",    "Cedar Plank",          "moretrees:cedar_planks",      "cedar"},
	}

	for i in ipairs(moretrees_slopes) do
		local mat = moretrees_slopes[i][1]
		local des = moretrees_slopes[i][2]
		local item = moretrees_slopes[i][3]
		local img = moretrees_slopes[i][4]
	
	
	core.register_node(":moretrees:"..mat.."_planks_" .. color, {
		description = desc ..des.. " Wood",
		tiles = {"moretrees_"..img.."_wood.png".. paint},
		is_ground_content = false,
		groups = {choppy = 2, oddly_breakable_by_hand = 2,cracky = 2, not_in_creative_inventory=1},
		sounds = default.node_sound_wood_defaults(),
	})
	end
end

if core.get_modpath("ethereal") then
	local moretrees_slopes = {   --Material , Description , Item, Image
		{"willow" ,  "Willow Wood" ,         "ethereal:willow_wood",      "ethereal_willow"},
		{"redwood",  "RedWood Wood",         "ethereal:redwood_wood",     "ethereal_redwood"},
		{"frost",	 "Frost Wood",           "ethereal:frost_wood",       "ethereal_frost"},
		{"yellow",	 "Healing Tree Wood",    "ethereal:yellow_wood",      "ethereal_yellow"},
		{"palm",	 "Palm Wood",    		 "ethereal:palm_wood",        "moretrees_palm"},
		{"banana",	 "Banana Wood",    		 "ethereal:banana_wood",      "ethereal_banana"},
		{"birch",	 "Birch Wood",    		 "ethereal:birch_wood",       "moretrees_birch"},
		{"olive",	 "Olive Wood",    		 "ethereal:olive_wood",       "ethereal_olive"},
		
	}
	
	for i in ipairs(moretrees_slopes) do
		local mat = moretrees_slopes[i][1]
		local des = moretrees_slopes[i][2]
		local item = moretrees_slopes[i][3]
		local img = moretrees_slopes[i][4]

	core.register_node(":ethereal:"..mat.."_wood_" .. color, {
		description = desc ..des.. " Wood",
		tiles = {img.."_wood.png".. paint},
		is_ground_content = false,
		groups = {choppy = 2, oddly_breakable_by_hand = 2,cracky = 2, not_in_creative_inventory=1},
		sounds = default.node_sound_wood_defaults(),
	})
	core.register_node(":ethereal:bamboo_block_" .. color, {
		description = desc .." Bamboo Block",
		tiles = {"ethereal_bamboo_floor.png".. paint},
		is_ground_content = false,
		groups = {choppy = 2, oddly_breakable_by_hand = 2,cracky = 2, not_in_creative_inventory=1},
		sounds = default.node_sound_wood_defaults(),
	})
	end
end
end
if core.get_modpath("mypaint") then
local colors = {}
for _, entry in ipairs(mypaint_wood.colors) do
	table.insert(colors, entry[1])
end
	mypaint.register(paintables, colors)
end
