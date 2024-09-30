#settings
execute unless score gamemode SettingsLob matches -1 run function lobby:load/map/plan/settings
execute if score gamemode SettingsLob matches -1 run function lobby:settings/board/full_random/map_random

#which type to do (only 1 atm, mirror is not a type.. its an attachment :) but still in types folder bc i feel like it hahaha)
function lobby:load/map/plan/types/basic 

#if mirror
execute if score buildMirror Settings matches 1 run function lobby:load/map/plan/types/mirror