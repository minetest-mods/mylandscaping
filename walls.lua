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
--Upper walls
{"Left", 		   "left", 	    "block1_l_t",		colbox_type1, "left",    {cracky=2,not_in_creative_inventory=1}},
{"Middle", 		   "middle",	"block1_m_t",		colbox_type1, "middle",  {cracky=2,not_in_creative_inventory=1}},
{"Full", 	       "full",	    "block1_f_t",	    colbox_type1, "full",    {cracky=2,not_in_creative_inventory=1}},
{"Right", 		   "right",	    "block1_r_t",		colbox_type1, "right",   {cracky=2,not_in_creative_inventory=1}},
{"Corner", 		   "corner",	"block1_c_t",		colbox_type4, "corner",  {cracky=2,not_in_creative_inventory=1}},
--Lower Walls
{"Left Bot", 	   "bleft", 	"block1_l_b",		colbox_type3, "left",    {not_in_creative_inventory=1}},
{"Middle Bot", 	   "bmiddle",	"block1_m_b",		colbox_type3, "middle",  {not_in_creative_inventory=1}},
{"Full Bot",       "bfull",     "block1_f_b",	    colbox_type1, "full",    {not_in_creative_inventory=1}},
{"Right Bot", 	   "bright",	"block1_r_b",		colbox_type3, "right",   {not_in_creative_inventory=1}},
{"Corner Bot", 	   "bcorner",	"block1_c_b",		colbox_type4, "corner",  {not_in_creative_inventory=1}},
--Columns
{"Column Top", 	   "column",	"column_upper",		colbox_type2, "column",  {cracky=2,not_in_creative_inventory=1}},
{"Big Column Top", "column_m",	"column_m_upper",	colbox_type5, "column_m",{cracky=2,not_in_creative_inventory=1}},
{"Column Bot", 	   "bcolumn",	"column_lower",		colbox_type2, "column",  {not_in_creative_inventory=1}},
{"Big Column Bot", "bcolumn_m", "column_m_lower",	colbox_type5, "column_m",{not_in_creative_inventory=1}},

{"Column Inside Corner", 	 "column_ic_t",	"column_ic_t",	colbox_type2, "column_ic_t",  {cracky=2,not_in_creative_inventory=1}},
{"Column Outside Corner", 	 "column_oc_t",	"column_oc_t",	colbox_type2, "column_oc_t",  {cracky=2,not_in_creative_inventory=1}},
{"Column Middle", 	         "column_m_t",	"column_m_t",	colbox_type2, "column_m_t",   {cracky=2,not_in_creative_inventory=1}},
{"Column Inside Corner Bot", "column_ic_b",	"column_ic_b",	colbox_type2, "column_ic_b",  {not_in_creative_inventory=1}},
{"Column Outside Corner Bot","column_oc_b",	"column_oc_b",	colbox_type2, "column_oc_b",  {not_in_creative_inventory=1}},
{"Column Middle Bot", 	     "column_m_b",	"column_m_b",	colbox_type2, "column_m_b",   {not_in_creative_inventory=1}},
}
for i in ipairs (block_type1) do
	local desc2 = block_type1[i][1]
	local typ = block_type1[i][2]
	local obj = block_type1[i][3]
	local colbox = block_type1[i][4]
	local drops = block_type1[i][5]
	local grup = block_type1[i][6]


local block_mat = { -- desc1, mat, img, img2, img3
			{"Cement", "cement", "mylandscaping_block_top.png","","mylandscaping_block_face.png"},
			{"Tan Cement", "cement_tan", "mylandscaping_block_top.png","^[colorize:#967d4d:75", "mylandscaping_block_face.png"},
			{"Autumn Cement", "cement_autumn", "mylandscaping_block_top.png","^[colorize:#ffc017:75", "mylandscaping_block_face.png"},
			{"Red Cement", "cement_red", "mylandscaping_block_top.png","^[colorize:#800900:75","mylandscaping_block_face.png"},
}
for i in ipairs (block_mat) do
	local desc1 = block_mat[i][1]
	local mat = block_mat[i][2]
	local img = block_mat[i][3]
	local img2 = block_mat[i][4]
	local img3 = block_mat[i][5]






minetest.register_node('mylandscaping:rwall_'..typ..mat, {
	description = desc1..' Retaining Wall '..desc2,
	drawtype = 'mesh',
	mesh = 'mylandscaping_'..obj..'.obj',
	tiles = {{name=img..img2}, {name=img3..img2}},
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



