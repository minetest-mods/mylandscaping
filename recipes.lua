minetest.register_craft({
		output = 'mylandscaping:machine',
		recipe = {
			{'default:shovel_steel', 'bucket:bucket_with_water', ''},
			{'default:steel_ingot', 'mylandscaping:cement_bag', 'default:steel_ingot'},
			{'default:steel_ingot', 'default:steel_ingot', 'default:steel_ingot'},
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

minetest.register_craftitem('mylandscaping:concrete_bag', {
	description = 'bag of concrete mix',
	inventory_image = 'mylandscaping_cement_bag.png',
})
