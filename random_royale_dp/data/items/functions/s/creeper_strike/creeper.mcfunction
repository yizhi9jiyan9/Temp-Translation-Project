#stage 1: wait 
scoreboard players remove @s ItemS1 1
execute if score @s ItemS1 matches 156 run playsound item.goat_horn.sound.3 master @a ~ ~ ~ 5 2
execute unless entity @s[tag=quiet] if score @s ItemS1 matches 112 run playsound item.goat_horn.sound.3 master @a ~ ~ ~ 5 2
execute unless entity @s[tag=quiet] if score @s ItemS1 matches 68 run playsound item.goat_horn.sound.3 master @a ~ ~ ~ 5 2
execute if score @s ItemS1 matches 1.. run particle dust 1 0 0 3 ~ ~-15 ~ 8 15 8 0 30 normal @a[scores={Player=1..}]
execute if score @s ItemS1 matches 1.. run particle dust 1 0 0 3 ~ ~-15 ~ 0 15 0 0 10 force @a[scores={Player=1..}]


#stage 2: destroy
execute if score @s ItemS1 matches ..0 run fill ~-10 ~ ~-10 ~10 ~ ~10 air destroy
execute if score @s ItemS1 matches ..0 run tp @s ~ ~-1 ~
execute if score @s ItemS1 matches ..0 run particle explosion ~ ~ ~ 10 0 10 0 20 normal @a
execute if score @s ItemS1 matches ..0 run playsound entity.generic.explode master @a ~ ~ ~ 1.5
execute if score @s ItemS1 matches ..0 run scoreboard players remove @s ItemS2 1
execute if score @s ItemS1 matches ..0 if score @s ItemS2 matches 89 run kill @s