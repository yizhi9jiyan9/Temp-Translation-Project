
#randomly chose where to spawn
scoreboard players operation max Rand = #length Build
function tools:rand

execute if score op Rand matches 0 store result score #data Build run data get storage load:summon open[0]
execute if score op Rand matches 0 run data remove storage load:summon open[0]
execute if score op Rand matches 1 store result score #data Build run data get storage load:summon open[1]
execute if score op Rand matches 1 run data remove storage load:summon open[1]
execute if score op Rand matches 2 store result score #data Build run data get storage load:summon open[2]
execute if score op Rand matches 2 run data remove storage load:summon open[2]
execute if score op Rand matches 3 store result score #data Build run data get storage load:summon open[3]
execute if score op Rand matches 3 run data remove storage load:summon open[3]


#tellraw @a ["",{"text":"DATA: "},{"score":{"name":"#data","objective":"Build"}}]
execute if score #data Build matches 1 run summon marker ~ ~ ~-21 {Tags:["map"]}
execute if score #data Build matches 2 run summon marker ~21 ~ ~ {Tags:["map"]}
execute if score #data Build matches 3 run summon marker ~ ~ ~21 {Tags:["map"]}
execute if score #data Build matches 4 run summon marker ~-21 ~ ~ {Tags:["map"]}

scoreboard players add #i Build 1
scoreboard players remove #length Build 1
execute if score #i Build < #store Build if score #length Build matches 1.. run function lobby:load/map/plan/summon