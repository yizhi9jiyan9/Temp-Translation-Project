#determine direction looking 
#45 135 west, 135 225 north, 225 315 east, 315 45 south

execute store result score @s ItemS1 run data get entity @s Rotation[0]
execute unless score @s ItemS1 matches 1.. run scoreboard players add @s ItemS1 360

scoreboard players set @s ItemS2 0
execute if score @s ItemS1 matches 35..135 run scoreboard players set @s ItemS2 2
execute if score @s ItemS2 matches 0 if score @s ItemS1 matches 136..225 run scoreboard players set @s ItemS2 1
execute if score @s ItemS2 matches 0 if score @s ItemS1 matches 226..315 run scoreboard players set @s ItemS2 2
execute if score @s ItemS2 matches 0 run scoreboard players set @s ItemS2 1


function items:s/wall/ray