
execute if block ~ ~-1 ~ air run tp @s ~ ~-1 ~ 
execute at @s if block ~ ~-1 ~ air run tp @s ~ ~-1 ~ 
execute at @s run function items:s/trap/glob_place



scoreboard players set @s ItemS1 -1 
scoreboard players set @s ItemS2 100 
