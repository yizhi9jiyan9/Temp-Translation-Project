#find not filled block
execute as @e[type=marker,tag=map] at @s store result score @s Box if entity @e[type=marker,tag=box,distance=..11]
execute as @e[type=marker,tag=map] if score @s Box < max Box run tag @s add v1 
execute as @e[type=marker,tag=map,tag=v1,sort=random,limit=1] unless score @s Box >= max Box run tag @s add v 

#summon marker
execute at @e[type=marker,tag=map,tag=v] run summon marker ~ ~ ~ {Tags:["box","v"]}
execute at @e[type=marker,tag=map,tag=v] run spreadplayers ~ ~ 0 10 under 103 false @e[type=marker,tag=box,tag=v]

#set marker data
scoreboard players set max Rand 3
function tools:rand 
execute if score op Rand matches 0 run tag @e[type=marker,tag=box,tag=v] add m
execute if score op Rand matches 1 if score secondLength Settings matches 2.. run tag @e[type=marker,tag=box,tag=v] add s 
execute if score op Rand matches 1 if score secondLength Settings matches ..1 run tag @e[type=marker,tag=box,tag=v] add m
execute if score op Rand matches 2 if score armorLength Settings matches 2.. run tag @e[type=marker,tag=box,tag=v] add a 
execute if score op Rand matches 2 if score armorLength Settings matches ..1 run tag @e[type=marker,tag=box,tag=v] add m 

execute if entity @e[type=marker,tag=box,tag=v,tag=m] run function items:give/rand_m
execute if entity @e[type=marker,tag=box,tag=v,tag=s] run function items:give/rand_s
execute if entity @e[type=marker,tag=box,tag=v,tag=a] run function items:give/rand_a
scoreboard players operation @e[type=marker,tag=box,tag=v] Box = op2 Rand

execute if score itemBoxSetup Settings matches 1 run scoreboard players set @e[type=marker,tag=box,tag=v] Tmr -1
execute if score itemBoxSetup Settings matches 2 run scoreboard players set @e[type=marker,tag=box,tag=v] Tmr 600
execute if score itemBoxSetup Settings matches 3 run scoreboard players set @e[type=marker,tag=box,tag=v] Tmr 500
execute if score itemBoxSetup Settings matches 4 run scoreboard players set @e[type=marker,tag=box,tag=v] Tmr 400

#summon armor stand!!!!!!!
execute as @e[type=marker,tag=box,tag=v] at @s run function items:give/box/summon/armor_stand

execute at @e[type=marker,tag=box,tag=v] run setblock ~ ~ ~ trapped_chest
execute at @e[type=marker,tag=box,tag=v] run clone ~ ~-1 ~ ~ ~-1 ~ ~ ~-100 ~ replace move
execute at @e[type=marker,tag=box,tag=v] run setblock ~ ~-1 ~ redstone_lamp

#unset everything
tag @e[type=marker,tag=box,tag=v] remove v
tag @e[type=marker,tag=map,tag=v] remove v
tag @e[type=marker,tag=map,tag=v1] remove v1
scoreboard players reset box Tmr