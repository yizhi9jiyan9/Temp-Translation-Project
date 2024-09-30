execute if score buildStyle Settings matches 1 if score #r1 Build matches 0 run function lobby:load/map/plan/rand_settings
execute if score buildStyle Settings matches 1 if score #r1 Build matches 1 run function lobby:load/map/plan/rand_settings1

#detect which slots are open
scoreboard players set #length Build 0
scoreboard players set #i Build 0
data remove storage load:summon open
execute positioned ~ ~ ~-21 unless entity @e[tag=map,tag=!v,distance=..2] run data modify storage load:summon open append value 1
execute positioned ~ ~ ~-21 unless entity @e[tag=map,tag=!v,distance=..2] run scoreboard players add #length Build 1
execute positioned ~21 ~ ~ unless entity @e[tag=map,tag=!v,distance=..2] run data modify storage load:summon open append value 2
execute positioned ~21 ~ ~ unless entity @e[tag=map,tag=!v,distance=..2] run scoreboard players add #length Build 1
execute positioned ~ ~ ~21 unless entity @e[tag=map,tag=!v,distance=..2] run data modify storage load:summon open append value 3
execute positioned ~ ~ ~21 unless entity @e[tag=map,tag=!v,distance=..2] run scoreboard players add #length Build 1
execute positioned ~-21 ~ ~ unless entity @e[tag=map,tag=!v,distance=..2] run data modify storage load:summon open append value 4
execute positioned ~-21 ~ ~ unless entity @e[tag=map,tag=!v,distance=..2] run scoreboard players add #length Build 1

#tellraw @a ["",{"text":"LENGTH: "},{"score":{"name":"#length","objective":"Build"}}]
#tellraw @a ["",{"text":"RANDOM NUMBER: "},{"score":{"name":"#store","objective":"Build"}}]


function lobby:load/map/plan/summon
tag @s add done
