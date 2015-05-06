minetest.register_alias("mylandscaping:concrete", 	"myconcrete:concrete")

local make_gravel = {}
local output_gravel = {}
local make_concrete = {}
local output_concrete = {}
local make_cement = {}
local output_cement = {}
local amount = {}
local amount2 = {}
local amount3 = {}

minetest.register_node('mylandscaping:mixer', {
	description = 'concrete mixer',
	drawtype = 'mesh',
	mesh = 'mylandscaping_crusher.obj',
	tiles = {
		{name='mylandscaping_tex1.png'},{name='mylandscaping_supports.png'},{name='mylandscaping_base.png'},{name='mylandscaping_hopper.png'},{name='mylandscaping_crusher.png'}},
	groups = {oddly_breakable_by_hand=2},
	paramtype = 'light',
	paramtype2 = 'facedir',
	selection_box = {
		type = 'fixed',
		fixed = {
			{-0.5, -0.5, -0.5, 1.5, 1.5, 0.5}, 
		}
	},
	collision_box = {
		type = 'fixed',
		fixed = {
			{-0.5, -0.5, -0.5, 1.5, 1.5, 0.5},
		}
	},

can_dig = function(pos,player)
	local meta = minetest.env:get_meta(pos);
	local inv = meta:get_inventory()
	if player:get_player_name() ~= meta:get_string("owner") then
		return false
	elseif not inv:is_empty("cobble") then
		return false
	elseif not inv:is_empty("gravel") then
		return false
	elseif not inv:is_empty("concrete") then
		return false
	elseif not inv:is_empty("sand") then
		return false
	end
	return true
end,

after_place_node = function(pos, placer, itemstack)
	local meta = minetest.env:get_meta(pos)
	meta:set_string("owner",placer:get_player_name())
	meta:set_string("infotext","Cement Mixer (owned by "..placer:get_player_name()..")")
	end,

on_construct = function(pos)
	local meta = minetest.env:get_meta(pos)
	meta:set_string("formspec", "invsize[9,10;]"..
		"background[-0.15,-0.25;9.40,10.75;mylandscaping_background.png]"..
		--Gravel
		"label[0.5,1;Cobble]"..
		"label[0.5,1.5;Crusher]"..
		"label[2.5,2;Cobble]"..
		"list[current_name;cobble;2.5,1;1,1;]"..
		"button[4,1;1,1;crush;Crush]"..
		"list[current_name;gravel;5.5,1;1,1;]"..
		"label[6.5,1;Gravel]"..

		--Concrete
		"label[5,0.5;Concrete Mixer]"..
		"list[current_name;sand;5.5,2.5;1,1;]"..
		"label[6.5,2.5;Sand]"..
		"button[5.5,3.5;1,1;mix;Mix]"..
		"list[current_name;concrete;5.5,4.5;1,1;]"..
		"label[6.5,4.5;Output]"..

		--Players Inven
		"list[current_player;main;0.5,6;8,4;]")
	meta:set_string("infotext", "Concrete Mixer")
	local inv = meta:get_inventory()
	inv:set_size("cobble", 1)
	inv:set_size("gravel", 1)
	inv:set_size("cement", 1)
	inv:set_size("concrete", 1)
	inv:set_size("clay", 1)
	inv:set_size("sand", 1)
end,

on_receive_fields = function(pos, formname, fields, sender)
	local meta = minetest.env:get_meta(pos)
	local inv = meta:get_inventory()

if fields["crush"]
then 

	if fields["crush"] then
		grave = "0"
		amount = "1"
		if inv:is_empty("cobble") then
			return
		end
	end
		local cobblestack = inv:get_stack("cobble", 1)
		local gravelstack = inv:get_stack("gravel", 1)
----------------------------------------------------------------------
	if cobblestack:get_name()== "default:cobble" then
				output_gravel = "default:gravel"
				make_gravel = "1"	
	end
----------------------------------------------------------------------
		if make_gravel == "1" then
			local give = {}
			for i = 0, amount-1 do
				give[i+1]=inv:add_item("gravel",output_gravel)
			end
			cobblestack:take_item()
			inv:set_stack("cobble",1,cobblestack)
		end
end
--------------------------------------------------------------------------------------
if fields["mix"]
then 

	if fields["mix"] then
		make_concrete = "0"
		amount2 = "2"
		if inv:is_empty("gravel") or
		   inv:is_empty("sand") then
			return
		end
	end
		local gravelstack = inv:get_stack("gravel", 1)
		local sandstack = inv:get_stack("sand", 1)
		local concretestack = inv:get_stack("concrete", 1)
----------------------------------------------------------------------
	if gravelstack:get_name()== "default:gravel" and
	   sandstack:get_name()== "default:sand" then
		make_concrete = "1"
		output_concrete = "mylandscaping:concrete_bag"
		
	end
	if gravelstack:get_name()== "default:gravel" and
	   sandstack:get_name()== "default:desert_sand" then
		make_concrete = "1"
		output_concrete = "mylandscaping:concrete_bag"
		
	end
----------------------------------------------------------------------
		if make_concrete == "1" then
			local give = {}
			for i = 0, amount2-1 do
				give[i+1]=inv:add_item("concrete",output_concrete)
			end
			gravelstack:take_item()
			inv:set_stack("gravel",1,gravelstack)
			sandstack:take_item()
			inv:set_stack("sand",1,sandstack)
		end
end


end
})


