execute if score @s ICarrot_stick matches 1.. run tp @s ~ ~ ~ 
execute if score @s ICarrot_stick matches 1.. run scoreboard players set @s ItemMtmr 100
execute if score @s ICarrot_stick matches 1.. run execute at @s run playsound minecraft:item.trident.riptide_1 master @s ~ ~ ~

execute unless entity @s[distance=..2] run particle dust 0.773 0 0.733 .5 ~ ~ ~ 0 0 0 0 1 normal @s
scoreboard players set @s ItemM2 0