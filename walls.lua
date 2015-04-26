minetest.register_node('mylandscaping:block1_wall', {
	description = 'block 1 wall', --we should probably name the block styles
	drawtype = 'mesh',
	mesh = 'mylandscaping_block1_bot_c.obj',
	tiles = {'mylandscaping_cement.png'},
	groups = {oddly_breakable_by_hand=2},
	paramtype = 'light',
	paramtype2 = 'facedir',
	selection_box = {
		type = 'fixed',
		fixed = {
			{-.5, -.5, -.4, .3, .5, .3}, -- Right, Bottom, Back, Left, Top, Front
			{-1., -.5, -.1, -.5, .5, .3}
		}
	},
	collision_box = {
		type = 'fixed',
		fixed = {
			{-.5, -.5, -.4, .3, .5, .3}, -- Right, Bottom, Back, Left, Top, Front
			{-1., -.5, -.1, -.5, .5, .3}
		}
	},
})
