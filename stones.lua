local stone_types = { --style, desc, img1, img2
	{"square", "Square", "concrete", "square"},
	{"square_sm", "Small Square", "concrete", "square_sm"},
	{"pavers", "Paver", "concrete", "pavers"},
	{"mess", "Messy Paver", "concrete", "mess"},
	{"pin", "Pinwheel", "concrete", "pin"},
	{"diamond", "Diamond Corner", "concrete", "diamond"},
}
for i in ipairs (stone_types) do
	local style = stone_types[i][1]
	local desc = stone_types[i][2]
	local img1 = stone_types[i][3]
	local img2 = stone_types[i][4]

minetest.register_node("mylandscaping:stone_"..style,{
	description = desc.." Patio Stone",
	drawtype = "nodebox",
	tiles = {
		"mylandscaping_"..img1..".png^mylandscaping_"..img2..".png",
		"mylandscaping_"..img1..".png",
		"mylandscaping_"..img1..".png^mylandscaping_"..img2..".png",
		"mylandscaping_"..img1..".png^mylandscaping_"..img2..".png",
		"mylandscaping_"..img1..".png^mylandscaping_"..img2..".png",
		"mylandscaping_"..img1..".png^mylandscaping_"..img2..".png",
		},
	paramtype = "light",
	groups = {cracky = 2},
	sounds = default.node_sound_stone_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,  -0.5, -0.5,    0.5,   -0.375,      0.5}, 
		}
	},
	
	after_place_node = function(pos, placer, itemstack, pointed_thing)
		
		local nodeu = minetest.get_node({x=pos.x, y=pos.y-1, z=pos.z}).name

		if nodeu == "default:sand" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "mylandscaping:stone_"..style.."_sand"})
		   minetest.set_node(pos,{name = "air"})
		end
	end,

})
minetest.register_node("mylandscaping:stone_"..style.."_sand",{
	description = desc.." Patio Stone in Sand",
	drawtype = "normal",
	tiles = {
		"mylandscaping_"..img1..".png^mylandscaping_"..img2..".png",
		"mylandscaping_"..img1..".png",
		"mylandscaping_"..img1..".png",
		"mylandscaping_"..img1..".png",
		"mylandscaping_"..img1..".png",
		"mylandscaping_"..img1..".png",
		},
	drop = "mylandscaping:stone_"..style,
	paramtype = "light",
	groups = {cracky = 2, not_in_creative_inventory = 1},
	sounds = default.node_sound_stone_defaults(),
	after_dig_node = function(pos, oldnode, oldmetadata, digger)
		minetest.set_node(pos,{name = "default:sand"})
	end,
})

end
