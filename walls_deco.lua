local colbox_type1 = { --column
	type = "fixed",
	fixed = {{.1, -.5, .1, .5, 0, .5},} -- Right, Bottom, Back, Left, Top, Front
}
local colbox_type2 = { --wall
	type = "fixed",
	fixed = {{-.5, -.5, .4, .5, 0, .2},}
}

local block_type1 = { -- desc2, obj, colbox, grup,
{"Deco Wall Scalloped",  "wall_s",	colbox_type2, 	{ml=1,cracky=2,not_in_creative_inventory=ml_visible}},
{"Deco Wall Flat Top",	 "wall_f",	colbox_type2, 	{ml=1,cracky=2,not_in_creative_inventory=ml_visible}},
{'Deco Wall Peaked Top', 'wall_p', 	colbox_type2,	{ml=1,cracky=2,not_in_creative_inventory=ml_visible}},
{'Deco Wall Random Top', 'wall_r',	colbox_type2,	{ml=1,cracky=2,not_in_creative_inventory=ml_visible}},
{"Deco Wall Column", 	 "column",	colbox_type1, 	{ml=1,cracky=2,not_in_creative_inventory=ml_visible}},
}
for i in ipairs (block_type1) do
	local desc2 = block_type1[i][1]
	local obj = block_type1[i][2]
	local colbox = block_type1[i][3]
	local grup = block_type1[i][4]
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

      minetest.register_node('mylandscaping:deco_column_light_'..col, {
      	description = coldesc..'lighted column',
      	drawtype = 'mesh',
      	mesh = 'mylandscaping_deco_column_l.obj',
      	tiles = {
      		{name='mylandscaping_block_split.png'..alpha},
      		{name='mylandscaping_block_smooth.png'..alpha},
      		{name='mylandscaping_block_smooth.png^[colorize:yellow:255'},
      		{name='mylandscaping_block_smooth.png^[colorize:#190B07:200'}},
      	groups = grup,
      	paramtype = 'light',
      	paramtype2 = 'facedir',
      	light_source = LIGHT_MAX,
      	selection_box = colbox_type1,
      	collision_box = colbox_type1,
      	sounds = default.node_sound_stone_defaults(),
      })

      minetest.register_craft({
      		type = 'shapeless',
      		output = 'mylandscaping:deco_column_light_'..col,
      		recipe = {'default:torch', 'mylandscaping:deco_column_'..col}
      })

   end
end
