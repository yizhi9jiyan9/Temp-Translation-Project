scoreboard players operation #store ItemS1 = @s ItemS1
execute as @e[type=minecraft:armor_stand,tag=trap] if score @s ItemS1 = #store ItemS1 run tp @s ~ ~ ~