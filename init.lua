mylandscaping = {}
if minetest.settings:get_bool('mylandscaping.creative') then
   ml_visible = 0
else
   ml_visible = 1
end

--Load File
dofile(minetest.get_modpath('mylandscaping')..'/walls_freeport.lua')
dofile(minetest.get_modpath('mylandscaping')..'/walls_madison.lua')
dofile(minetest.get_modpath('mylandscaping')..'/walls_adaridge.lua')
dofile(minetest.get_modpath('mylandscaping')..'/walls_deco.lua')
dofile(minetest.get_modpath('mylandscaping')..'/stones.lua')
dofile(minetest.get_modpath('mylandscaping')..'/recipes.lua')
dofile(minetest.get_modpath('mylandscaping')..'/machine.lua')
dofile(minetest.get_modpath('mylandscaping')..'/mixer.lua')
dofile(minetest.get_modpath('mylandscaping')..'/concrete.lua')
dofile(minetest.get_modpath('mylandscaping')..'/formspec.lua')
dofile(minetest.get_modpath('mylandscaping')..'/toppers.lua')
