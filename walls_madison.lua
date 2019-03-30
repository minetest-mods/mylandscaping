local colbox_type1 = { --top blocks
	type = 'fixed',
	fixed = {-.5, -.5, -.2, .5, .5, .5}
}
local colbox_type2 = { --bottom blocks
	type = 'fixed',
	fixed = {-.5, -.5, -.2, .5, .5, .5}
}
local colbox_type3 = { --top inside corner
	type = 'fixed',
	fixed = {{-.2, -.5, -.5, .5, .5, .5},
		{-.5, -.5, -.2, .5, .5, .5}}
}
local colbox_type4 = { --bottom inside corner
	type = 'fixed',
	fixed = {{-.2, -.5, -.5, .5, .5, .5},
		{-.5, -.5, -.2, .5, .5, .5}}
}
local colbox_type5 = { --top outside corner
	type = 'fixed',
	fixed = {-.2, -.5, -.2, .5, .5, .5}
}
local colbox_type6 = { --bottom outside corner
	type = 'fixed',
	fixed = {-.2, -.5, -.2, .5, .5, .5}
}

local block_type1 = { -- desc2, typ, obj, colbox, drops, grup
{'Madison Middle', 		'middle', 		'blockm_m_t',	colbox_type1, 'middle',   	{ml=1,cracky=2,not_in_creative_inventory=ml_visible}},
{'Hax0r', 	'bmiddle',		'blockm_m_b',	colbox_type2, 'middle', 	{not_in_creative_inventory=1}},
{'Madison Inside Corner',	'icorner',	'blockm_ic_t',	colbox_type3,	'icorner', {ml=1,cracky=2,not_in_creative_inventory=ml_visible}},
{'Hax0r', 	'bicorner',		'blockm_ic_b',	colbox_type4, 'icorner', 	{not_in_creative_inventory=1}},
{'Madison Outside Corner',	'ocorner',	'blockm_oc_t',	colbox_type5,	'ocorner', {ml=1,cracky=2,not_in_creative_inventory=ml_visible}},
{'Hax0r', 	'bocorner',		'blockm_oc_b',	colbox_type6, 'ocorner', 	{not_in_creative_inventory=1}},
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

      minetest.register_node('mylandscaping:mwall_'..typ..'_'..col, {
      	description = desc2..' '..coldesc,
      	drawtype = 'mesh',
      	mesh = 'mylandscaping_'..obj..'.obj',
      	tiles = {{name='mylandscaping_madison_wood.png'}, {name='mylandscaping_madison_stone.png'..alpha}},
      	groups = grup,
      	paramtype = 'light',
      	paramtype2 = 'facedir',
      	drop = 'mylandscaping:mwall_'..drops..'_'..col,
      	selection_box = colbox,
      	collision_box = colbox,
      	sounds = default.node_sound_stone_defaults(),

      after_place_node = function(pos, placer, itemstack, pointed_thing)
      	local nodeu = minetest.get_node({x=pos.x,y=pos.y-1,z=pos.z})
      	local nodea = minetest.get_node({x=pos.x,y=pos.y+1,z=pos.z})
      	if nodeu.name == 'mylandscaping:mwall_'..typ..'_'..col then
      	   minetest.swap_node(pos,{name='mylandscaping:mwall_'..typ..'_'..col,param2=nodeu.param2})
      	   minetest.swap_node({x=pos.x,y=pos.y-1,z=pos.z},{name='mylandscaping:mwall_b'..typ..'_'..col,param2=nodeu.param2})
      	end
      	if nodea.name == 'mylandscaping:mwall_'..typ..'_'..col then
      	   minetest.swap_node(pos,{name='mylandscaping:mwall_b'..typ..'_'..col,param2=nodea.param2})
      	end
      end,

      after_destruct = function(pos, oldnode)
      	local nodeu = minetest.get_node({x=pos.x,y=pos.y-1,z=pos.z})
      	if nodeu.name == 'mylandscaping:mwall_b'..typ..'_'..col then
      	   minetest.swap_node({x=pos.x,y=pos.y-1,z=pos.z},{name='mylandscaping:mwall_'..typ..'_'..col,param2=nodeu.param2})
      	end
      end,
      })
   end
end
