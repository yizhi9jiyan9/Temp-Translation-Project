#every so often summon a B O X 
scoreboard players add box Tmr 1 

execute if score itemBoxSetup Settings matches 2 if score box Tmr matches 200.. run function items:give/box/summon/check_some
execute if score itemBoxSetup Settings matches 3 if score box Tmr matches 150.. run function items:give/box/summon/check_mid
execute if score itemBoxSetup Settings matches 4 if score box Tmr matches 100.. run function items:give/box/summon/check_lots


#if player open chest 
execute as @e[type=marker,tag=box] at @s if block ~ ~-1 ~ redstone_lamp[lit=true] run function items:give/box/give
scoreboard players reset @a[scores={Player=1..2}] BoxOpen

#if chest is broken
execute as @e[type=marker,tag=box] at @s unless block ~ ~ ~ trapped_chest run function items:give/box/reset_1 
execute as @e[type=marker,tag=box] at @s unless block ~ ~-1 ~ redstone_lamp run function items:give/box/reset_1
execute as @e[type=marker,tag=box] at @s if block ~ ~-2 ~ air run function items:give/box/reset_1 


#box timer 
execute as @e[type=marker,tag=box] at @s run function items:give/box/tmr