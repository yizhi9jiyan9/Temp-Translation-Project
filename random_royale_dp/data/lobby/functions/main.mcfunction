#players and join
scoreboard players add @a Join 0
execute as @a run function lobby:players/main
scoreboard players reset * Join
scoreboard players set @a Join 1

#settings
effect give @e[tag=sett] invisibility 1000000 0 true
scoreboard players remove settings Tmr 1
execute if block 458 140 458 lever[powered=true] run function lobby:settings/board/full_random/check
execute if score gamemode SettingsLob matches -1 run function lobby:settings/board/full_random/main
execute if block 458 140 466 minecraft:polished_blackstone_button[powered=true] run function lobby:settings/board/adv
function preset_load:main
function item_chest:main

#parkour
execute unless score main_gs Stats matches 3 as @a at @s run function lobby:parkour/main
execute if score main_gs Stats matches 3 as @a[scores={Player=0}] at @s run function lobby:parkour/main 
scoreboard players reset @a[scores={Player=0}] ICarrot_stick
scoreboard players reset @a[scores={Player=3}] ICarrot_stick

#tips & Tutorial
execute as @a[scores={Player=0}] run function lobby:tips
function lobby:tutorial/main


#if lobby GS has more things than I anticipate. Add a lobby (basicaly what runs when gs = 0)
execute as @a[scores={Player=0},predicate=!lobby:lobby] run function lobby:players/tp

#noStart cooldown timer
execute if score noStart Tmr matches 1.. run function lobby:nostart

#starting timer
execute unless score noStart Tmr matches 1.. if score main_gs Stats matches 0 if block 464 140 458 minecraft:polished_blackstone_button[powered=true] run function lobby:start/tmr_start
execute if score main_gs Stats matches 1 run function lobby:start/tmr_main

#loading map
execute if score main_gs Stats matches 2 run function lobby:load/main
