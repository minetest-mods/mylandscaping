local colbox_type1 = {
	type = "fixed",
	fixed = {
			{-.5, -.5, -.25, .5, .5, .5}
	}
}
local colbox_type2 = {
	type = "fixed",
	fixed = {
			{-.25, -.5, -.25, .5, .5, .5}
	}
}

local block_type1 = { -- desc2, typ, obj, colbox, drops
{"Left", 		"left", 	"block1_top_l",		colbox_type1, ""},
{"Middle", 		"middle",	"block1_top_m",		colbox_type1, ""},
{"Right", 		"right",	"block1_top_r",		colbox_type1, ""},
{"Corner", 		"corner",	"block1_top_c",		colbox_type1, ""},
{"Column Top", 		"column",	"column_upper",		colbox_type2, ""},

{"Left Bot", 		"bleft", 	"block1_bot_l",		colbox_type1, "mylandscaping:rwall_cement_left"},
{"Middle Bot", 		"bmiddle",	"block1_bot_m",		colbox_type1, "mylandscaping:rwall_cement_middle"},
{"Right Bot", 		"bright",	"block1_bot_r",		colbox_type1, "mylandscaping:rwall_cement_right"},
{"Corner Bot", 		"bcorner",	"block1_bot_c",		colbox_type1, "mylandscaping:rwall_cement_corner"},
{"Column Bot", 		"bcolumn",	"column_lower",		colbox_type2, "mylandscaping:rwall_cement_column"},
}
for i in ipairs (block_type1) do
	local desc2 = block_type1[i][1]
	local typ = block_type1[i][2]
	local obj = block_type1[i][3]
	local colbox = block_type1[i][4]
	local drops = block_type1[i][5]


local block_mat = { -- desc1, mat, img
			{"Cement", "cement", "mylandscaping_cement"},
			{"Wood", "wood", "default_wood"},
}
for i in ipairs (block_mat) do
	local desc1 = block_mat[i][1]
	local mat = block_mat[i][2]
	local img = block_mat[i][3]






minetest.register_node('mylandscaping:rwall_'..typ..mat, {
	description = desc1..' Retaining Wall '..desc2,
	drawtype = 'mesh',
	mesh = 'mylandscaping_'..obj..'.obj',
	tiles = {img..'.png'},
	groups = {oddly_breakable_by_hand=2},
	paramtype = 'light',
	paramtype2 = 'facedir',
	drop = drops,
	selection_box = colbox,
	collision_box = colbox,

after_place_node = function(pos, placer, itemstack, pointed_thing)
	local nodeu = minetest.get_node({x=pos.x,y=pos.y-1,z=pos.z})
	local node = minetest.get_node(pos)
	if nodeu.name == "mylandscaping:rwall_"..typ..mat then
	   minetest.set_node({x=pos.x,y=pos.y-1,z=pos.z},{name="mylandscaping:rwall_b"..typ..mat,param2=node.param2})
	end
end
})

end
end



