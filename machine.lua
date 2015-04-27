minetest.register_node('mylandscaping:machine', {
	description = 'landscaping machine',
	drawtype = 'mesh',
	mesh = 'mylandscaping_machine.obj',
	tiles = {
		{name='mylandscaping_tex3.png'},{name='mylandscaping_tex1.png'},{name='default_gravel.png'},{name='mylandscaping_tex2.png'}},
--	inventory_image = 'more_fire_campfire.png',
--	wield_image = 'more_fire_campfire.png',
	groups = {oddly_breakable_by_hand=2},
	paramtype = 'light',
	paramtype2 = 'facedir',
	selection_box = {
		type = 'fixed',
		fixed = {
			{-0.5, -0.5, -0.5, 1.1, 0.5, 0.5}, -- Right, Bottom, Back, Left, Top, Front
			{1.1, -0.5, -0.1, 1.5, -0.3, 0.5}
		}
	},
	collision_box = {
		type = 'fixed',
		fixed = {
			{-0.5, -0.5, -0.5, 1.1, 0.5, 0.5},
			{1.1, -0.5, -0.1, 1.5, -0.3, 0.5}
		}
	},
})
