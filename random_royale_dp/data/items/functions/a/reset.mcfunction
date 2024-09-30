## Will clear the item + it's data. If tag start is not input it will also remove item from player permenantly ##
scoreboard players reset @s ItemAtmr
clear @s #items:all{main:1}

execute unless score @s ItemA matches 1.. run function items:a/unset/reset
execute if score @s ItemA matches 1 run function items:a/iron_armor/reset
execute if score @s ItemA matches 2 run function items:a/speedster_armor/reset
execute if score @s ItemA matches 3 run function items:a/assassin_armor/reset
execute if score @s ItemA matches 4 run function items:a/creeper_armor/reset
execute if score @s ItemA matches 5 run function items:a/scuba/reset
execute if score @s ItemA matches 6 run function items:a/radar/reset
execute if score @s ItemA matches 7 run function items:a/enderman_armor/reset
execute if score @s ItemA matches 8 run function items:a/super_armor/reset
execute if score @s ItemA matches 9 run function items:a/random_armor/reset
execute if score @s ItemA matches 10 run function items:a/cactus/reset
execute if score @s ItemA matches 11 run function items:a/barbarian/reset
execute if score @s ItemA matches 12 run function items:a/tank/reset
execute if score @s ItemA matches 13 run function items:a/bat/reset
execute if score @s ItemA matches 14 unless score specialSettings Settings matches 3 run function items:a/dragon/reset
execute if score @s ItemA matches 14 if score specialSettings Settings matches 3 run function items:a/dragon_wars/reset
execute if score @s ItemA matches 15 run function items:a/jet_pack/reset
execute if score @s ItemA matches 16 run function items:a/inspire/reset
execute if score @s ItemA matches 17 run function items:a/true_speed/reset
execute if score @s ItemA matches 18 run function items:a/bunny/reset

execute unless entity @s[tag=start] run scoreboard players set @s ItemA 0
