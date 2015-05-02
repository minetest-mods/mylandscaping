minetest.register_craft({
		output = 'mylandscaping:machine',
		recipe = {
			{'default:shovel_steel', 'bucket:bucket_with_water', ''},
			{'default:default:steel_ingot', 'mylandscaping:cement_bag', 'default:default:steel_ingot'},
			{'default:default:steel_ingot', 'default:default:steel_ingot', 'default:default:steel_ingot'},
			}
})

--[[minetest.register_craft({
		output = 'mylandscaping:conretemachine',
		recipe = {
			{'', '', ''},
			{'', '', ''},
			{'', '', ''},
			}
})--]]

minetest.register_craftitem('mylandscaping:cement_bag', {
	description = 'bag of cement',
	inventory_image = 'mylandscaping_cement_bag.png',
})
