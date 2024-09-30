#death
execute as @a[scores={SafetyTmr=1..}] run function game:gen/safety_tmr
execute if score game_gs Stats matches 0 run function game:gen/death/big_main
execute as @a[scores={Player=1}] run function game:gen/kill/hit_tmr
scoreboard players reset @a PosExplodeID

#regeneration and die if too low 
execute as @a[scores={Player=1}] run function game:gen/healing
execute as @a[scores={Player=1},predicate=game:low_die] run kill @s
execute as @a[scores={Player=1},predicate=!game:far_die,predicate=!game:safe] run kill @s
execute if score game_gs Stats matches 0 as @a[scores={Player=1},predicate=game:fix_respawn] run function game:gen/spawn/main

#POV: you are stuck, so lets get that fixed big fella
execute as @a[scores={Player=1}] run function game:gen/stuck

#force end game
function game:gen/force_end/main

#map fixer 
function game:gen/map_fixer/main

#map destroyer
execute if score buildDestroy Settings matches 1 run function game:gen/map_destroy

#items
function items:main
execute if score itemSetup Settings matches 3 run function game:gen/item/tmr/main
execute unless score itemSetup Settings matches 3 if score itemBox Settings matches 1 run function items:give/box/main

##gamemode stuff##
execute if score game_gs Stats matches 0 if score gamemode Settings matches 0 run function game:dm_ffa/during
execute if score game_gs Stats matches 0 if score gamemode Settings matches 1 run function game:elim_ffa/during
execute if score game_gs Stats matches 0 if score gamemode Settings matches 2 run function game:dm_team/during
execute if score game_gs Stats matches 0 if score gamemode Settings matches 3 run function game:elim_team/during
execute if score game_gs Stats matches 0 if score gamemode Settings matches 4 run function game:stm/during
execute if score game_gs Stats matches 0 if score gamemode Settings matches 5 run function game:zombie/during
execute if score game_gs Stats matches 0 if score gamemode Settings matches 6 run function game:weapon/during

#not enough players
function game:gen/no_player/check

#end of round timer
execute if score main_gs Stats matches 3 if score game_gs Stats matches 1 run function game:gen/end_tmr/during



