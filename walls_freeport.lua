local colbox_type1 = { --top blocks
	type = 'fixed',
	fixed = {{-.49, -.5, 0.05, .5, .5, .52}}
}
local colbox_type2 = { --columns
	type = 'fixed',
	fixed = {{-.2, -.5, -.2, .5, .5, .5}}
}
local colbox_type3 = { --bottom blocks
	type = 'fixed',
	fixed = {{-.5, -.5, -.16, .5, .5, .25}}
}
local colbox_type4 = { --corner
	type = 'fixed',
	fixed = {{-.5, -.5, 0, .5, .5, .5},
		{0, -.5, -.5, .5, .5, .5}}
}
local colbox_type5 = { --corner
	type = 'fixed',
	fixed = {{-.5, -.5, -.5, .5, .5, .5},}
}
local colbox_type6 = { --corner
	type = 'fixed',
	fixed = {{-.5, -.5, -.3, .5, .5, .5},}
}

local block_type1 = { -- desc2, typ, obj, colbox, drops, grup
{'Freeport Left', 		'left', 		'blockf_l_t',	colbox_type1, 'left',   	{ml=1,cracky=2,not_in_creative_inventory=ml_visible}},
{'Freeport Middle', 		'middle',		'blockf_m_t',	colbox_type1, 'middle', 	{ml=1,cracky=2,not_in_creative_inventory=ml_visible}},
{'Freeport Right', 		'right',		'blockf_r_t',	colbox_type1, 'right',  	{ml=1,cracky=2,not_in_creative_inventory=ml_visible}},
{'Freeport Inside Corner', 		'corner',		'blockf_c_t',	colbox_type4, 'corner', 	{ml=1,cracky=2,not_in_creative_inventory=ml_visible}},
{'Hax0r', 	'bleft', 		'blockf_l_b',	colbox_type3, 'left',   	{not_in_creative_inventory=1}},
{'Hax0r', 	'bmiddle',		'blockf_m_b',	colbox_type3, 'middle', 	{not_in_creative_inventory=1}},
{'Hax0r', 	'bright',		'blockf_r_b',	colbox_type3, 'right',  	{not_in_creative_inventory=1}},
{'Hax0r', 	'bcorner',		'blockf_c_b',	colbox_type4, 'corner', 	{not_in_creative_inventory=1}},
{'Freeport Column (IC)',     	'column_ic_t',	'columnf_ic_t',	colbox_type5, 'column_ic_t',  	{ml=1,cracky=2,not_in_creative_inventory=ml_visible}},
{'Freeport Column (OC)',   	'column_oc_t',	'columnf_oc_t',	colbox_type2, 'column_oc_t',  	{ml=1,cracky=2,not_in_creative_inventory=ml_visible}},
{'Freeport Column (M)', 	    		'column_m_t',	'columnf_m_t',	colbox_type6, 'column_m_t',   	{ml=1,cracky=2,not_in_creative_inventory=ml_visible}},
{'Hax0r', 	'bcolumn_ic_t',	'columnf_ic_b',	colbox_type5, 'column_ic_b',  	{not_in_creative_inventory=1}},
{'Hax0r',	'bcolumn_oc_t',	'columnf_oc_b',	colbox_type2, 'column_oc_b',  	{not_in_creative_inventory=1}},
{'Hax0r', 	     	'bcolumn_m_t',	'columnf_m_b',	colbox_type6, 'column_m_b',   	{not_in_creative_inventory=1}},
}
for i in ipairs (block_type1) do
	local desc2 = block_type1[i][1]
	local typ = block_type1[i][2]
	local obj = block_type1[i][3]
	local colbox = block_type1[i][4]
	local drops = block_type1[i][5]
	local grup = block_type1[i][6]
   local color_tab = {
   {'black', 	'Black',		'^[multiply:#2c2c2c'},
   {'blue', 	'Blue',			'^[multiply:#0041f4'},
   {'brown', 	'Brown',		'^[multiply:#6c3800'},
   {'cyan', 	'Cyan',			'^[multiply:cyan'},
   {'dark_green', 	'Dark Green',		'^[multiply:#2b7b00'},
   {'dark_grey', 	'Dark Grey',		'^[multiply:#464646'},
   {'green', 	'Green',		'^[multiply:#67eb1c'},
   {'grey', 	'Grey',			'^[multiply:#818181'},
   {'magenta', 	'Magenta',		'^[multiply:#d80481'},
   {'orange',	'Orange',		'^[multiply:#e0601a'},
   {'pink', 	'Pink',			'^[multiply:#ffa5a5'},
   {'red', 	'Red',			'^[multiply:#c91818'},
   {'violet', 	'Violet',		'^[multiply:#480680'},
   {'white', 	'White',		'^[multiply:white'},
   {'yellow', 	'Yellow',		'^[multiply:#fcf611'},
   {'cement', 	'Concrete',		''},
   }
   for i in ipairs (color_tab) do
      local col = color_tab[i][1]
      local coldesc = color_tab[i][2]
      local alpha = color_tab[i][3]

      minetest.register_node('mylandscaping:fwall_'..typ..'_'..col, {
      	description = desc2..' '..coldesc,
      	drawtype = 'mesh',
      	mesh = 'mylandscaping_'..obj..'.obj',
      	tiles = {{name='mylandscaping_block_smooth.png'..alpha}, {name='mylandscaping_block_split.png'..alpha}},
      	groups = grup,
      	paramtype = 'light',
      	paramtype2 = 'facedir',
      	drop = 'mylandscaping:fwall_'..drops..'_'..col,
      	selection_box = colbox,
      	collision_box = colbox,
      	sounds = default.node_sound_stone_defaults(),

      after_place_node = function(pos, placer, itemstack)
      	local nodeu = minetest.get_node({x=pos.x,y=pos.y-1,z=pos.z})
      	local nodea = minetest.get_node({x=pos.x,y=pos.y+1,z=pos.z})
      	if nodeu.name == 'mylandscaping:fwall_'..typ..'_'..col then
      	   minetest.swap_node(pos,{name='mylandscaping:fwall_'..typ..'_'..col,param2=nodeu.param2})
      	   minetest.swap_node({x=pos.x,y=pos.y-1,z=pos.z},{name='mylandscaping:fwall_b'..typ..'_'..col,param2=nodeu.param2})
      	end
      	if nodea.name == 'mylandscaping:fwall_'..typ..'_'..col then
      	   minetest.swap_node(pos,{name='mylandscaping:fwall_b'..typ..'_'..col,param2=nodea.param2})
      	end
      end,

      after_destruct = function(pos, oldnode)
      	local nodeu = minetest.get_node({x=pos.x,y=pos.y-1,z=pos.z})
      	if nodeu.name == 'mylandscaping:fwall_b'..typ..'_'..col then
      	   minetest.swap_node({x=pos.x,y=pos.y-1,z=pos.z},{name='mylandscaping:fwall_'..typ..'_'..col,param2=nodeu.param2})
      	end
      end,

      })
   end
end
