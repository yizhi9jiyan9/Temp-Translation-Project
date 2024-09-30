#set structures + timer
scoreboard players add load Tmr 1
execute if score load Tmr matches 3 as @e[type=marker,tag=map,tag=!built,limit=1] at @s run function lobby:load/map/create_map


#titles
execute store result score cur Load if entity @e[type=marker,tag=map,tag=built]
scoreboard players operation #store Load = cur Load
scoreboard players operation #store Load *= 100 Num
scoreboard players operation #store Load /= start Load

execute as @a unless score @s Parkour matches 1.. run title @s times 0 10 10
execute as @a unless score @s Parkour matches 1.. run title @s actionbar ["",{"text":"建造中：","color":"aqua"},{"score":{"name":"#store","objective":"Load"},"color":"gold"},{"text":"%","color":"gold"},{"text":" ","color":"aqua"}]


#detect end
execute if score reloading Stats matches 0 unless entity @e[type=marker,tag=map,tag=!built] run function game:start_game
execute if score reloading Stats matches 1 unless entity @e[type=marker,tag=map,tag=!built] run function game:end_round