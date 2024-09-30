setblock ~ ~ ~ air destroy 
execute if score specialSettings Settings matches 2 run setblock ~-1 ~ ~ air destroy 
execute if score specialSettings Settings matches 2 run setblock ~1 ~ ~ air destroy 
execute if score specialSettings Settings matches 2 run setblock ~ ~ ~-1 air destroy 
execute if score specialSettings Settings matches 2 run setblock ~ ~ ~1 air destroy 
execute if score specialSettings Settings matches 2 run setblock ~ ~-1 ~ air destroy 

execute positioned ~ ~1 ~ run scoreboard players operation @a[scores={Player=1},distance=..5] HitterID = @s HitID
execute positioned ~ ~1 ~ run scoreboard players set @a[scores={Player=1},distance=..5] HitTmr 100

scoreboard players set @s ItemMtmr 1