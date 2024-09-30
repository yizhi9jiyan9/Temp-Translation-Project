execute unless block ~ ~-1 ~ air run function items:s/meteor/land 
execute if score #count ItemS1 matches 19.. run kill @s

scoreboard players add #count ItemS1 1
execute positioned ~ ~-1 ~ if block ~ ~ ~ air unless score #count ItemS1 matches 20.. run function items:s/meteor/land_ray