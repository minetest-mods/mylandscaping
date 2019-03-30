local block_type1 = { -- desc2, obj, texture
{'Sphere', 		'sphere',	'concrete'},
{'Suzanne', 	'suzanne',	'concrete'},
{'Dragon', 		'dragon',	'dragon'},
{'Cross',	'cross',	'concrete'},
}

for i in ipairs (block_type1) do
	local desc2 = block_type1[i][1]
	local obj = block_type1[i][2]
	local tex = block_type1[i][3]
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

   minetest.register_node('mylandscaping:column_t_'..obj..'_'..col, {
   	description = desc2..' topper',
   	drawtype = 'mesh',
   	mesh = 'mylandscaping_column_t_'..obj..'.obj',
   	tiles = {name='mylandscaping_'..tex..'.png'..alpha},
   	groups = {cracky=2, not_in_creative_inventory=ml_visible, ml=1},
   	paramtype = 'light',
   	paramtype2 = 'facedir',
   	sounds = default.node_sound_stone_defaults(),
   })
   end
end
