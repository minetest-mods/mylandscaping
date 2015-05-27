local colbox_type1 = { --column
	type = "fixed",
	fixed = {{-.5, -.5, -.5, .5, .5, .5},}
}
local colbox_type2 = { --wall
	type = "fixed",
	fixed = {{-.5, -.5, -.3, .5, .5, .5},}
}

local block_type1 = { -- desc2, obj, colbox, grup
{"Deco Wall Round Top",  "wall_r",	colbox_type1, 	{cracky=2,not_in_creative_inventory=visible}},
{"Deco Wall Flat Top",	 "wall_f",	colbox_type1, 	{cracky=2,not_in_creative_inventory=visible}},
{"Deco Wall Column", 	 "column",	colbox_type2, 	{cracky=2,not_in_creative_inventory=visible}},
}
for i in ipairs (block_type1) do
	local desc2 = block_type1[i][1]
	local obj = block_type1[i][2]
	local colbox = block_type1[i][3]
	local grup = block_type1[i][4]

local color_tab = {
{"black", 	"Black",		"^[colorize:black:150"},
{"blue", 	"Blue",			"^[colorize:#0404B4:100"},
{"brown", 	"Brown",		"^[colorize:#190B07:100"},
{"cyan", 	"Cyan",			"^[colorize:cyan:100"},
{"dark_green", 	"Dark Green",		"^[colorize:#071907:150"},
{"dark_grey", 	"Dark Grey",		"^[colorize:black:150"},
{"green", 	"Green",		"^[colorize:green:100"},
{"grey", 	"Grey",			"^[colorize:black:100"},
{"magenta", 	"Magenta",		"^[colorize:magenta:100"},
{"orange",	"Orange",		"^[colorize:orange:100"},
{"pink", 	"Pink",			"^[colorize:#FE2E9A:100"},
{"red", 	"Red",			"^[colorize:#B40404:100"},
{"violet", 	"Violet",		"^[colorize:#2F0B3A:100"},
{"white", 	"White",		"^[colorize:white:100"},
{"yellow", 	"Yellow",		"^[colorize:yellow:100"},
{"cement", 	"Concrete",		""},
}
for i in ipairs (color_tab) do
local col = color_tab[i][1]
local coldesc = color_tab[i][2]
local alpha = color_tab[i][3]

minetest.register_node('mylandscaping:deco_'..obj..'_'..col, {
	description = desc2.." "..coldesc,
	drawtype = 'mesh',
	mesh = 'mylandscaping_deco_'..obj..'.obj',
	tiles = {{name='mylandscaping_block_split.png'..alpha}, {name='mylandscaping_block_smooth.png'..alpha}},
	groups = grup,
	paramtype = 'light',
	paramtype2 = 'facedir',
	selection_box = colbox,
	collision_box = colbox,
	sounds = default.node_sound_stone_defaults(),
})

end
end


