--Load File
dofile(minetest.get_modpath('mylandscaping')..'/walls.lua')
dofile(minetest.get_modpath('mylandscaping')..'/stones.lua')
dofile(minetest.get_modpath('mylandscaping')..'/recipes.lua')


local mod_myconcrete = minetest.get_modpath("myconcrete") 


if mod_myconcrete then
	dofile(minetest.get_modpath("mylandscaping").."/myconcrete_machine.lua")
	dofile(minetest.get_modpath("mylandscaping").."/myconcrete_mixer.lua")

else 
	dofile(minetest.get_modpath("mylandscaping").."/machine.lua")
	dofile(minetest.get_modpath("mylandscaping").."/mixer.lua")
	dofile(minetest.get_modpath('mylandscaping')..'/concrete.lua')
	end
