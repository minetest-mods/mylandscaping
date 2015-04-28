local colbox_type1 = { --top blocks
	type = "fixed",
	fixed = {
			{-.49, -.5, 0.05, .5, .6, .52}
	}
}
local colbox_type2 = { --columns
	type = "fixed",
	fixed = {
			{0, -.5, 0, .5, .5, .5}
	}
}
local colbox_type3 = { --bottom blocks
	type = "fixed",
	fixed = {
			{-.5, -.5, -.16, .5, .5, .25}
	}
}
local colbox_type4 = { --corner
	type = "fixed",
	fixed = {
			{-.5, -.5, 0, .5, .5, .5},
			{0, -.5, -.5, .5, .5, .5}
	}
}
local colbox_type5 = { --corner
	type = "fixed",
	fixed = {
			{-.5, -.5, -.5, .5, .5, .5},
	}
}

local block_type1 = { -- desc2, typ, obj, colbox, drops, grup
{"Left", 		"left", 	"block1_top_l",		colbox_type1, "left",   {cracky=2,not_in_creative_inventory=1}},
{"Middle", 		"middle",	"block1_top_m",		colbox_type1, "middle", {cracky=2,not_in_creative_inventory=1}},
{"Right", 		"right",	"block1_top_r",		colbox_type1, "right",  {cracky=2,not_in_creative_inventory=1}},
{"Corner", 		"corner",	"block1_top_c",		colbox_type4, "corner", {cracky=2,not_in_creative_inventory=1}},
{"Column Top", 		"column",	"column_upper",		colbox_type2, "column", {cracky=2,not_in_creative_inventory=1}},
{"Big Column Top", 	"column_m",	"column_m_upper",	colbox_type5, "column_m", {cracky=2,not_in_creative_inventory=1}},

{"Left Bot", 		"bleft", 	"block1_bot_l",		colbox_type3, "left",   {not_in_creative_inventory=1}},
{"Middle Bot", 		"bmiddle",	"block1_bot_m",		colbox_type3, "middle", {not_in_creative_inventory=1}},
{"Right Bot", 		"bright",	"block1_bot_r",		colbox_type3, "right",  {not_in_creative_inventory=1}},
{"Corner Bot", 		"bcorner",	"block1_bot_c",		colbox_type4, "corner", {not_in_creative_inventory=1}},
{"Column Bot", 		"bcolumn",	"column_lower",		colbox_type2, "column", {not_in_creative_inventory=1}},
{"Big Column Bot", 	"bcolumn_m",	"column_m_lower",	colbox_type5, "column_m", {not_in_creative_inventory=1}},
}
for i in ipairs (block_type1) do
	local desc2 = block_type1[i][1]
	local typ = block_type1[i][2]
	local obj = block_type1[i][3]
	local colbox = block_type1[i][4]
	local drops = block_type1[i][5]
	local grup = block_type1[i][6]


local block_mat = { -- desc1, mat, img, img2
			{"Cement", "cement", "mylandscaping_cement.png",""},
			{"Tan Cement", "cement_tan", "mylandscaping_cement.png","^mylandscaping_yellow.png"},
			{"Autumn Cement", "cement_autumn", "mylandscaping_cement.png","^mylandscaping_orange.png"},
			{"Red Cement", "cement_red", "mylandscaping_cement.png","^mylandscaping_red.png"},
}
for i in ipairs (block_mat) do
	local desc1 = block_mat[i][1]
	local mat = block_mat[i][2]
	local img = block_mat[i][3]
	local img2 = block_mat[i][4]






minetest.register_node('mylandscaping:rwall_'..typ..mat, {
	description = desc1..' Retaining Wall '..desc2,
	drawtype = 'mesh',
	mesh = 'mylandscaping_'..obj..'.obj',
	tiles = {img..img2},
	groups = grup,
	paramtype = 'light',
	paramtype2 = 'facedir',
	drop = 'mylandscaping:rwall_'..drops..mat,
	selection_box = colbox,
	collision_box = colbox,


after_place_node = function(pos, placer, itemstack, pointed_thing)
	local nodeu = minetest.get_node({x=pos.x,y=pos.y-1,z=pos.z})
	local nodea = minetest.get_node({x=pos.x,y=pos.y+1,z=pos.z})
	local node = minetest.get_node({x=pos.x, y=pos.y-1, z=pos.z})
	if nodeu.name == "mylandscaping:rwall_"..typ..mat then
	   minetest.set_node(pos,{name="mylandscaping:rwall_"..typ..mat,param2=nodeu.param2})
	   minetest.set_node({x=pos.x,y=pos.y-1,z=pos.z},{name="mylandscaping:rwall_b"..typ..mat,param2=nodeu.param2})
	end
	if nodea.name == "mylandscaping:rwall_"..typ..mat then
	   minetest.set_node(pos,{name="mylandscaping:rwall_b"..typ..mat,param2=node.param2})
	end
end,

after_destruct = function(pos, oldnode)
	local node = minetest.get_node(pos).name
	local nodeu = minetest.get_node({x=pos.x,y=pos.y-1,z=pos.z})
	local nodeu2 = minetest.get_node({x=pos.x,y=pos.y-2,z=pos.z})
	local nodea = minetest.get_node({x=pos.x,y=pos.y+1,z=pos.z})

	if nodeu.name == "mylandscaping:rwall_b"..typ..mat and
	   nodea.name == "air" then
	   minetest.set_node({x=pos.x,y=pos.y-1,z=pos.z},{name="mylandscaping:rwall_"..typ..mat,param2=nodeu.param2})
	end


end,

})

end
end



