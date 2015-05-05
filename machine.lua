local material = {}
local block = {}
local make_ok = {}
local anzahl = {}
local material2 = {}
local stone = {}
local make_ok2 = {}
local anzahl2 = {}

minetest.register_node('mylandscaping:machine', {
	description = 'concrete forms',
	drawtype = 'mesh',
	mesh = 'mylandscaping_cement_mixer.obj',
	tiles = {
		{name='mylandscaping_tex3.png'},{name='mylandscaping_tex1.png'},{name='default_gravel.png'},{name='mylandscaping_tex2.png'}},
	groups = {oddly_breakable_by_hand=2},
	paramtype = 'light',
	paramtype2 = 'facedir',
	selection_box = {
		type = 'fixed',
		fixed = {
			{-0.5, -0.5, -0.5, 1.1, 0.5, 0.5}, 
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

can_dig = function(pos,player)
	local meta = minetest.env:get_meta(pos);
	local inv = meta:get_inventory()
	
	if player:get_player_name() ~= meta:get_string("owner") then
		return false
	elseif not inv:is_empty("input") then
		return false
	elseif not inv:is_empty("output") then
		return false
	end
	return true


end,

after_place_node = function(pos, placer, itemstack)
	local meta = minetest.env:get_meta(pos)
	meta:set_string("owner",placer:get_player_name())
	meta:set_string("infotext","Concrete Mixer (owned by "..placer:get_player_name()..")")
	end,

on_construct = function(pos)
	local meta = minetest.env:get_meta(pos)
	meta:set_string("formspec", "invsize[10,10;]"..
		"background[-0.15,-0.25;10.40,10.75;mylandscaping_background.png]"..
		"label[1.5,0.5;Retaining Wall]"..
		--Styles of blocks
		"label[1,1;Wall Blocks]"..
		"item_image_button[1,1.5;1,1;mylandscaping:rwall_left_cement;wall1; ]"..
		"item_image_button[2,1.5;1,1;mylandscaping:rwall_middle_cement;wall2; ]"..
		"item_image_button[3,1.5;1,1;mylandscaping:rwall_right_cement;wall3; ]"..
		"item_image_button[4,1.5;1,1;mylandscaping:rwall_corner_cement;wall4; ]"..

		--Styles of columns
		"label[1,2.5;Columns]"..
		"item_image_button[1,3;1,1;mylandscaping:rwall_column_m_t_cement;column2; ]"..
		"item_image_button[2,3;1,1;mylandscaping:rwall_column_ic_t_cement;column3; ]"..
		"item_image_button[3,3;1,1;mylandscaping:rwall_column_oc_t_cement;column4; ]"..

		"label[6.5,0.5;Patio Stones]"..
		--Styles of blocks
		"item_image_button[6,1.5;1,1;mylandscaping:stone_square;patio1; ]"..
		"item_image_button[7,1.5;1,1;mylandscaping:stone_square_sm;patio2; ]"..
		"item_image_button[8,1.5;1,1;mylandscaping:stone_pavers;patio3; ]"..

		--Input
		"label[3,4;  Input]"..
		"list[current_name;input;3,4.5;1,1;]"..
		"label[4,4;  Dye]"..
		"list[current_name;dye;4,4.5;1,1;]"..
		--Output
		"label[6,4;Output]"..
		"list[current_name;output;6,4.5;1,1;]"..
		--Players Inven
		"list[current_player;main;1,6;8,4;]")
	meta:set_string("infotext", "Concrete Mixer")
	local inv = meta:get_inventory()
	inv:set_size("input", 1)
	inv:set_size("output", 1)
	inv:set_size("dye", 1)
end,

on_receive_fields = function(pos, formname, fields, sender)
	local meta = minetest.env:get_meta(pos)
	local inv = meta:get_inventory()

if fields["wall1"]
or fields["wall2"]
or fields["wall3"]
or fields["wall4"]
or fields["column"]
or fields["column2"]
or fields["column3"]
or fields["column4"]
then 

	if fields["wall1"] then
		make_ok = "0"
		anzahl = "2"
		block = "mylandscaping:rwall_left_"
		if inv:is_empty("input") then
			return
		end
	end
	if fields["wall2"] then
		make_ok = "0"
		anzahl = "2"
		block = "mylandscaping:rwall_middle_"
		if inv:is_empty("input") then
			return
		end
	end
	if fields["wall3"] then
		make_ok = "0"
		anzahl = "2"
		block = "mylandscaping:rwall_right_"
		if inv:is_empty("input") then
			return
		end
	end
	if fields["wall4"] then
		make_ok = "0"
		anzahl = "2"
		block = "mylandscaping:rwall_corner_"
		if inv:is_empty("input") then
			return
		end
	end
	if fields["column2"] then
		make_ok = "0"
		anzahl = "1"
		block = "mylandscaping:rwall_column_m_t_"
		if inv:is_empty("input") then
			return
		end
	end
	if fields["column3"] then
		make_ok = "0"
		anzahl = "1"
		block = "mylandscaping:rwall_column_ic_t_"
		if inv:is_empty("input") then
			return
		end
	end
	if fields["column4"] then
		make_ok = "0"
		anzahl = "1"
		block = "mylandscaping:rwall_column_oc_t_"
		if inv:is_empty("input") then
			return
		end
	end
		local instack = inv:get_stack("input", 1)
		local outstack = inv:get_stack("output", 1)
		local dyestack = inv:get_stack("dye", 1)
----------------------------------------------------------------------
	if instack:get_name()== "mylandscaping:concrete_bag" then
				material = "cement"
				make_ok = "1"	
	end
	if instack:get_name()== "mylandscaping:concrete_bag" and
	   dyestack:get_name()== "dye:yellow" then
				material = "cement_tan"
				make_ok = "1"	
	end
	if instack:get_name()== "mylandscaping:concrete_bag" and
	   dyestack:get_name()== "dye:orange" then
				material = "cement_autumn"
				make_ok = "1"	
	end
	if instack:get_name()== "mylandscaping:concrete_bag" and
	   dyestack:get_name()== "dye:red" then
				material = "cement_red"
				make_ok = "1"	
	end
----------------------------------------------------------------------
		if make_ok == "1" then
			local give = {}
			for i = 0, anzahl-1 do
				give[i+1]=inv:add_item("output",block..material)
			end
			instack:take_item()
			inv:set_stack("input",1,instack)
			if dyestack:get_name() == "dye:yellow" or
			   dyestack:get_name() == "dye:orange" or
			   dyestack:get_name() == "dye:red" then
			dyestack:take_item()
			inv:set_stack("dye",1,dyestack)
			end
		end
end
--------------------------------------------------------------------------------------
if fields["patio1"]
or fields["patio2"]
or fields["patio3"]
then 

	if fields["patio1"] then
		make_ok2 = "0"
		anzahl2 = "2"
		stone = "mylandscaping:stone_square"
		if inv:is_empty("input") then
			return
		end
	end
	if fields["patio2"] then
		make_ok2 = "0"
		anzahl2 = "2"
		stone = "mylandscaping:stone_square_sm"
		if inv:is_empty("input") then
			return
		end
	end
	if fields["patio3"] then
		make_ok2 = "0"
		anzahl2 = "2"
		stone = "mylandscaping:stone_pavers"
		if inv:is_empty("input") then
			return
		end
	end
		local instack = inv:get_stack("input", 1)
		local outstack = inv:get_stack("output", 1)
----------------------------------------------------------------------
	if instack:get_name()== "mylandscaping:concrete_bag" then
				make_ok2 = "1"
		
	end
----------------------------------------------------------------------
		if make_ok2 == "1" then
			local give = {}
			for i = 0, anzahl2-1 do
				give[i+1]=inv:add_item("output",stone)
			end
			instack:take_item()
			inv:set_stack("input",1,instack)
		end
end
end
})


