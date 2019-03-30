local stone_cbox = {
		type = 'fixed',
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.375, 0.5},
		}
	}
local sstone_cbox = {
		type = 'fixed',
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0.4375, 0.5},
		}
	}

local sq_cbox = {
		type = 'fixed',
		fixed = {
			{-0.4375, -0.5, -0.4375, 0.4375, -0.3125, 0.4375},
			{-0.5, -0.5, -0.5, 0.5, -0.375, 0.5},
		}
	}
local s_sq_cbox = {
		type = 'fixed',
		fixed = {
			{-0.4375, -0.5, -0.4375, 0.4375, 0.5, 0.4375},
			{-0.5, -0.5, -0.5, 0.5, 0.4375, 0.5},
		}
	}
local smsq_cbox = {
		type = 'fixed',
		fixed = {
			{-0.4375, -0.5, -0.4375, -0.0625, -0.3125, -0.0625},
			{-0.5, -0.5, -0.5, 0.5, -0.375, 0.5},
			{-0.4375, -0.5, 0.0625, -0.0625, -0.3125, 0.4375},
			{0.0625, -0.5, -0.4375, 0.4375, -0.3125, -0.0625},
			{0.0625, -0.5, 0.0625, 0.4375, -0.3125, 0.4375},
		}
	}
local s_smsq_cbox = {
		type = 'fixed',
		fixed = {
			{-0.4375, -0.5, -0.4375, -0.0625, 0.5, -0.0625},
			{-0.5, -0.5, -0.5, 0.5, 0.4375, 0.5},
			{-0.4375, -0.5, 0.0625, -0.0625, 0.5, 0.4375},
			{0.0625, -0.5, -0.4375, 0.4375, 0.5, -0.0625},
			{0.0625, -0.5, 0.0625, 0.4375, 0.5, 0.4375},
		}
	}
local xsmsq_cbox = {
		type = 'fixed',
		fixed = {
			{-0.4375, -0.5, -0.4375, -0.1875, -0.3125, -0.1875},
			{-0.5, -0.5, -0.5, 0.5, -0.375, 0.5},
			{-0.4375, -0.5, 0.1875, -0.1875, -0.3125, 0.4375},
			{0.1875, -0.5, -0.4375, 0.4375, -0.3125, -0.1875},
			{0.1875, -0.5, 0.1875, 0.4375, -0.3125, 0.4375},
			{-0.4375, -0.5, -0.125, -0.1875, -0.3125, 0.125},
			{-0.125, -0.5, 0.1875, 0.125, -0.3125, 0.4375},
			{-0.125, -0.5, -0.125, 0.125, -0.3125, 0.125},
			{0.1875, -0.5, -0.125, 0.4375, -0.3125, 0.125},
			{-0.125, -0.5, -0.4375, 0.125, -0.3125, -0.1875},
		}
	}
local s_xsmsq_cbox = {
		type = 'fixed',
		fixed = {
			{-0.4375, -0.5, -0.4375, -0.1875, 0.5, -0.1875},
			{-0.5, -0.5, -0.5, 0.5, 0.4375, 0.5},
			{-0.4375, -0.5, 0.1875, -0.1875, 0.5, 0.4375},
			{0.1875, -0.5, -0.4375, 0.4375, 0.5, -0.1875},
			{0.1875, -0.5, 0.1875, 0.4375, 0.5, 0.4375},
			{-0.4375, -0.5, -0.125, -0.1875, 0.5, 0.125},
			{-0.125, -0.5, 0.1875, 0.125, 0.5, 0.4375},
			{-0.125, -0.5, -0.125, 0.125, 0.5, 0.125},
			{0.1875, -0.5, -0.125, 0.4375, 0.5, 0.125},
			{-0.125, -0.5, -0.4375, 0.125, 0.5, -0.1875},
		}
	}
local paver_cbox = {
		type = 'fixed',
		fixed = {
			{-0.5, -0.5, 0.3125, -0.3125, -0.3125, 0.5},
			{-0.25, -0.5, 0.3125, -0.0625, -0.3125, 0.5},
			{-0.5, -0.5, 0.0625, -0.0625, -0.3125, 0.25},
			{0, -0.5, 0.0625, 0.1875, -0.3125, 0.5},
			{-0.5, -0.5, -0.4375, -0.3125, -0.3125, 0},
			{-0.25, -0.5, -0.1875, 0.1875, -0.3125, 0},
			{0.25, -0.5, 0.3125, 0.5, -0.3125, 0.5},
			{0.25, -0.5, -0.1875, 0.4375, -0.3125, 0.25},
			{-0.25, -0.5, -0.5, -0.0625, -0.3125, -0.25},
			{0, -0.5, -0.4375, 0.4375, -0.3125, -0.25},
			{-0.5, -0.5, -0.5, 0.5, -0.375, 0.5},
		}
	}
local spaver_cbox = {
		type = 'fixed',
		fixed = {
			{-0.5, -0.5, 0.3125, -0.3125, 0.5, 0.5},
			{-0.25, -0.5, 0.3125, -0.0625, 0.5, 0.5},
			{-0.5, -0.5, 0.0625, -0.0625, 0.5, 0.25},
			{0, -0.5, 0.0625, 0.1875, 0.5, 0.5},
			{-0.5, -0.5, -0.4375, -0.3125, 0.5, 0},
			{-0.25, -0.5, -0.1875, 0.1875, 0.5, 0},
			{0.25, -0.5, 0.3125, 0.5, 0.5, 0.5},
			{0.25, -0.5, -0.1875, 0.4375, 0.5, 0.25},
			{-0.25, -0.5, -0.5, -0.0625, 0.5, -0.25},
			{0, -0.5, -0.4375, 0.4375, 0.5, -0.25},
			{-0.5, -0.5, -0.5, 0.5, 0.4375, 0.5},
		}
	}
local ashlar_cbox = {
		type = 'fixed',
		fixed = {
			{-0.5, -0.5, 0.375, -0.375, -0.3125, 0.5},
			{-0.5, -0.5, 0.1875, -0.375, -0.3125, 0.3125},
			{-0.3125, -0.5, 0.1875, -0.0625, -0.3125, 0.5},
			{0, -0.5, 0.375, 0.25, -0.3125, 0.5},
			{0.3125, -0.5, 0.375, 0.5, -0.3125, 0.5},
			{-0.5, -0.5, -0.1875, -0.1875, -0.3125, 0.125},
			{-0.5, -0.5, -0.5, -0.375, -0.3125, -0.25},
			{-0.3125, -0.5, -0.375, -0.1875, -0.3125, -0.25},
			{-0.125, -0.5, -0.0625, -0.0625, -0.3125, 0.125},
			{-0.125, -0.5, -0.375, 0.0625, -0.3125, -0.125},
			{0, -0.5, -0.0625, 0.0625, -0.3125, 0},
			{0, -0.5, 0.0625, 0.3125, -0.3125, 0.3125},
			{0.375, -0.5, 0.1875, 0.5, -0.3125, 0.3125},
			{0.375, -0.5, -0.1875, 0.5, -0.3125, 0.125},
			{0.125, -0.5, -0.1875, 0.3125, -0.3125, 0},
			{0.125, -0.5, -0.375, 0.25, -0.3125, -0.25},
			{-0.3125, -0.5, -0.5, -0.0625, -0.3125, -0.4375},
			{0, -0.5, -0.5, 0.25, -0.3125, -0.4375},
			{0.3125, -0.5, -0.5, 0.5, -0.3125, -0.25},
			{-0.5, -0.5, -0.5, 0.5, -0.375, 0.5},
		}
	}
local sashlar_cbox = {
		type = 'fixed',
		fixed = {
			{-0.5, -0.5, 0.375, -0.375, 0.5, 0.5},
			{-0.5, -0.5, 0.1875, -0.375, 0.5, 0.3125},
			{-0.3125, -0.5, 0.1875, -0.0625, 0.5, 0.5},
			{0, -0.5, 0.375, 0.25, 0.5, 0.5},
			{0.3125, -0.5, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.1875, -0.1875, 0.5, 0.125},
			{-0.5, -0.5, -0.5, -0.375, 0.5, -0.25},
			{-0.3125, -0.5, -0.375, -0.1875, 0.5, -0.25},
			{-0.125, -0.5, -0.0625, -0.0625, 0.5, 0.125},
			{-0.125, -0.5, -0.375, 0.0625, 0.5, -0.125},
			{0, -0.5, -0.0625, 0.0625, 0.5, 0},
			{0, -0.5, 0.0625, 0.3125, 0.5, 0.3125},
			{0.375, -0.5, 0.1875, 0.5, 0.5, 0.3125},
			{0.375, -0.5, -0.1875, 0.5, 0.5, 0.125},
			{0.125, -0.5, -0.1875, 0.3125, 0.5, 0},
			{0.125, -0.5, -0.375, 0.25, 0.5, -0.25},
			{-0.3125, -0.5, -0.5, -0.0625, 0.5, -0.4375},
			{0, -0.5, -0.5, 0.25, 0.5, -0.4375},
			{0.3125, -0.5, -0.5, 0.5, 0.5, -0.25},
			{-0.5, -0.5, -0.5, 0.5, 0.4375, 0.5},
		}
	}
local flag_cbox = {
		type = 'fixed',
		fixed = {
			{-0.5, -0.5, 0.0625, -0.0625, -0.3125, 0.5},
			{-0.5, -0.5, -0.1875, -0.25, -0.3125, 0},
			{-0.5, -0.5, -0.4375, -0.25, -0.3125, -0.25},
			{0, -0.5, 0.3125, 0.4375, -0.3125, 0.5},
			{0, -0.5, 0.0625, 0.1875, -0.3125, 0.25},
			{-0.1875, -0.5, -0.4375, 0.1875, -0.3125, 0},
			{0.25, -0.5, -0.1875, 0.4375, -0.3125, 0.25},
			{0.25, -0.5, -0.4375, 0.5, -0.3125, -0.25},
			{-0.5, -0.5, -0.5, 0.5, -0.375, 0.5},
		}
	}
local sflag_cbox = {
		type = 'fixed',
		fixed = {
			{-0.5, -0.5, 0.0625, -0.0625, 0.5, 0.5},
			{-0.5, -0.5, -0.1875, -0.25, 0.5, 0},
			{-0.5, -0.5, -0.4375, -0.25, 0.5, -0.25},
			{0, -0.5, 0.3125, 0.4375, 0.5, 0.5},
			{0, -0.5, 0.0625, 0.1875, 0.5, 0.25},
			{-0.1875, -0.5, -0.4375, 0.1875, 0.5, 0},
			{0.25, -0.5, -0.1875, 0.4375, 0.5, 0.25},
			{0.25, -0.5, -0.4375, 0.5, 0.5, -0.25},
			{-0.5, -0.5, -0.5, 0.5, 0.4375, 0.5},
		}
	}
local pin_cbox = {
		type = 'fixed',
		fixed = {
			{-0.5, -0.5, -0.125, -0.25, -0.3125, 0.5},
			{-0.5, -0.5, -0.4375, 0.125, -0.3125, -0.1875},
			{0.1875, -0.5, -0.4375, 0.4375, -0.3125, 0.1875},
			{-0.1875, -0.5, 0.25, 0.4375, -0.3125, 0.5},
			{-0.1875, -0.5, -0.125, 0.125, -0.3125, 0.1875},
			{-0.5, -0.5, -0.5, 0.5, -0.375, 0.5},
		}
	}
local spin_cbox = {
		type = 'fixed',
		fixed = {
			{-0.5, -0.5, -0.125, -0.25, 0.5, 0.5},
			{-0.5, -0.5, -0.4375, 0.125, 0.5, -0.1875},
			{0.1875, -0.5, -0.4375, 0.4375, 0.5, 0.1875},
			{-0.1875, -0.5, 0.25, 0.4375, 0.5, 0.5},
			{-0.1875, -0.5, -0.125, 0.125, 0.5, 0.1875},
			{-0.5, -0.5, -0.5, 0.5, 0.4375, 0.5},
		}
	}

local stone_types = { --style, desc, img1, img2
	{'square', 'Square', 'concrete', 'square',sq_cbox,s_sq_cbox},
	{'square_sm', 'Small Square', 'concrete', 'square_sm',smsq_cbox,s_smsq_cbox},
	{'square_xsm', 'Extra Small Square', 'concrete', 'square_xsm',xsmsq_cbox,s_xsmsq_cbox},
	{'pavers', 'Paver', 'concrete', 'pavers',paver_cbox,spaver_cbox},
	{'ashlar', 'Ashlar', 'concrete', 'ashlar',ashlar_cbox,sashlar_cbox},
	{'flagstone', 'Flagstone', 'concrete', 'flagstone',flag_cbox,sflag_cbox},
	{'pinwheel', 'Pinwheel', 'concrete', 'pinwheel',pin_cbox,spin_cbox},
}
for i in ipairs (stone_types) do
	local style = stone_types[i][1]
	local desc = stone_types[i][2]
	local img1 = stone_types[i][3]
	local img2 = stone_types[i][4]
	local cbox = stone_types[i][5]
	local scbox = stone_types[i][6]
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

   minetest.register_alias('mylandscaping:stone_'..style,'mylandscaping:stone_'..style..'cement')

   minetest.register_node('mylandscaping:stone_'..style..col,{
   	description = desc..' Patio Stone '..coldesc,
   	drawtype = 'nodebox',
   	tiles = {
   		'mylandscaping_'..img1..'.png^mylandscaping_'..img2..'.png'..alpha,
   		'mylandscaping_'..img1..'.png'..alpha,
   		'mylandscaping_'..img1..'.png'..alpha,
   		'mylandscaping_'..img1..'.png'..alpha,
   		'mylandscaping_'..img1..'.png'..alpha,
   		'mylandscaping_'..img1..'.png'..alpha,
   		},
   	paramtype = 'light',
   	groups = {cracky = 2, not_in_creative_inventory=ml_visible, ml=1,},
   	node_box = cbox,
   	selection_box = stone_cbox,
   	collision_box = stone_cbox,
   	sounds = default.node_sound_stone_defaults(),

   	after_place_node = function(pos, placer, itemstack, pointed_thing)
   		local nodeu = minetest.get_node({x=pos.x, y=pos.y-1, z=pos.z}).name
         if minetest.get_item_group(nodeu, 'sand') > 0 then
   		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = 'mylandscaping:stone_'..style..'_sand'..col})
   		   minetest.set_node(pos,{name = 'air'})
   		end
   	end,

   })
   minetest.register_node('mylandscaping:stone_'..style..'_sand'..col,{
   	description = desc..' Patio Stone in Sand '..coldesc,
   	drawtype = 'nodebox',
   	tiles = {
   		'mylandscaping_'..img1..'.png^mylandscaping_'..img2..'.png'..alpha,
   		'mylandscaping_'..img1..'.png'..alpha,
   		'mylandscaping_'..img1..'.png'..alpha,
   		'mylandscaping_'..img1..'.png'..alpha,
   		'mylandscaping_'..img1..'.png'..alpha,
   		'mylandscaping_'..img1..'.png'..alpha,
   		},
   	drop = 'mylandscaping:stone_'..style,
   	paramtype = 'light',
   	groups = {cracky = 2, not_in_creative_inventory = 1},
   	node_box = scbox,
   	selection_box = sstone_cbox,
   	collision_box = sstone_cbox,
   	sounds = default.node_sound_stone_defaults(),
   	after_dig_node = function(pos, oldnode, oldmetadata, digger)
   		minetest.set_node(pos,{name = 'default:silver_sand'})
   	end,
   })
   end
end
