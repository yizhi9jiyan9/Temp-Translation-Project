tag @s add v 


#north 
execute positioned ~ ~ ~-21 if entity @e[tag=map,tag=!v,distance=..2] run tag @s add N 
execute positioned ~ ~ ~-21 if entity @e[tag=map,tag=!v,distance=..2] run scoreboard players add @s NodeConnect 1
#south
execute positioned ~ ~ ~21 if entity @e[tag=map,tag=!v,distance=..2] run tag @s add S 
execute positioned ~ ~ ~21 if entity @e[tag=map,tag=!v,distance=..2] run scoreboard players add @s NodeConnect 1
#east 
execute positioned ~21 ~ ~ if entity @e[tag=map,tag=!v,distance=..2] run tag @s add E 
execute positioned ~21 ~ ~ if entity @e[tag=map,tag=!v,distance=..2] run scoreboard players add @s NodeConnect 1
#west
execute positioned ~-21 ~ ~ if entity @e[tag=map,tag=!v,distance=..2] run tag @s add W 
execute positioned ~-21 ~ ~ if entity @e[tag=map,tag=!v,distance=..2] run scoreboard players add @s NodeConnect 1

tag @s remove v