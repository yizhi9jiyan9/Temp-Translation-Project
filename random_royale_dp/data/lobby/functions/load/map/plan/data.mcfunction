#finds scores for each dodad put in 
execute store result score @s BuildX run data get entity @s Pos[0]
execute unless score @s BuildX matches 0.. run scoreboard players add @s BuildX 1
scoreboard players operation @s BuildX -= 1000 Num
scoreboard players operation @s BuildX /= 21 Num

execute store result score @s BuildZ run data get entity @s Pos[2]
execute unless score @s BuildZ matches 0.. run scoreboard players add @s BuildZ 1
scoreboard players operation @s BuildZ -= 1000 Num
scoreboard players operation @s BuildZ /= 21 Num

execute store result score @s Build run data get entity @s UUID[0]