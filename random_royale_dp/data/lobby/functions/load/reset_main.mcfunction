#reseting map 
execute as @e[type=marker,tag=map,limit=5] at @s run function lobby:load/map/reset

#titles
execute store result score cur Load if entity @e[type=marker,tag=map]
scoreboard players operation #store Load = cur Load
scoreboard players operation #store Load *= 100 Num
scoreboard players operation #store Load /= start Load
scoreboard players operation #store2 Load = 100 Num
scoreboard players operation #store2 Load -= #store1 Load

execute as @a unless score @s Parkour matches 1.. run title @s times 0 10 10
execute as @a unless score @s Parkour matches 1.. run title @s actionbar ["",{"text":"Resetting: ","color":"aqua"},{"score":{"name":"#store2","objective":"Load"},"color":"gold"},{"text":"%","color":"gold"},{"text":" ","color":"aqua"}]



#Once timer complete, set up map data (end of load_gs = 0)
execute unless entity @e[type=marker,tag=map] run function lobby:load/set_start


