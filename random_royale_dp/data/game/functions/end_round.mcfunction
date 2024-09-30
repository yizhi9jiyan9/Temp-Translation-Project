tag @a[scores={Player=1}] add doin

#set players
effect clear @a[tag=doin]
effect give @a[tag=doin] instant_health 1 100 true
effect give @a[tag=doin] saturation 1 100 true
xp set @a[tag=doin] 0 points
xp set @a[tag=doin] 0 levels
scoreboard players reset @a[tag=doin] Deaths
scoreboard players reset * SafetyTmr
tag @e remove winner
gamemode adventure @a[tag=doin]
scoreboard players reset @a[tag=doin] StuckTmr
scoreboard players reset @a[tag=doin] CrouchTmr
playsound entity.zombie.converted_to_drowned master @a 1000 100 1000 100 1.4

#items
execute if score itemSetup Settings matches 1 as @a[tag=doin] run function items:give/full_inventory_rand
execute if score itemSetup Settings matches 2..3 if score itemMirror Settings matches 0 as @a[tag=doin] run function items:give/full_inventory_rand
execute if score itemSetup Settings matches 2..3 if score itemMirror Settings matches 1 run tag @a[tag=doin] add doins
execute if score itemSetup Settings matches 2..3 if score itemMirror Settings matches 1 run function items:give/full_inventory_mirror

execute unless score itemSetup Settings matches 3 if score itemBox Settings matches 1 unless score itemBoxSetup Settings matches 1 run function items:give/box/summon/big_summon
execute unless score itemSetup Settings matches 3 if score itemBox Settings matches 1 if score itemBoxSetup Settings matches 1 run function items:give/box/summon/bigger_summon
function items:reset_map_items

#set game code
scoreboard players add round Stats 1
scoreboard players set game_gs Stats 0
scoreboard players set main_gs Stats 3
scoreboard players set noPlayerCancel Tmr 200
scoreboard players reset game Tmr


#title
title @a times 20 100 20
title @a subtitle ["",{"text":"回合数：","color":"gold"},{"score":{"name":"rounds","objective":"Settings"},"color":"gold"}]
title @a title ["",{"text":"目前回合：","color":"blue"},{"score":{"name":"round","objective":"Stats"},"color":"blue"}]

#settings related re/sets
execute if score teams Settings matches 0 run team join Player @a[tag=doin]
execute if score spawnStyle Settings matches 4 run function game:gen/spawn/team_setup/start
execute as @a[tag=doin] run function game:gen/spawn/main

#specific gamemode 
execute if score gamemode Settings matches 0 run function game:dm_ffa/end_round
execute if score gamemode Settings matches 1 run function game:elim_ffa/end_round
execute if score gamemode Settings matches 2 run function game:dm_team/end_round
execute if score gamemode Settings matches 3 run function game:elim_team/end_round
execute if score gamemode Settings matches 4 run function game:stm/end_round
execute if score gamemode Settings matches 5 run function game:zombie/end_round
execute if score gamemode Settings matches 6 run function game:weapon/end_round

tag @a[tag=doin] remove doin
