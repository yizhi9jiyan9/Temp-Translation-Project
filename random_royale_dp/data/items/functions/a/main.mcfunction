##What runs every tick as each player##

execute unless score @s ItemA matches 0.. run function items:a/unset/dur
execute if score @s ItemA matches 1 run function items:a/iron_armor/dur
execute if score @s ItemA matches 2 run function items:a/speedster_armor/dur
execute if score @s ItemA matches 3 run function items:a/assassin_armor/dur
execute if score @s ItemA matches 4 run function items:a/creeper_armor/dur
execute if score @s ItemA matches 5 run function items:a/scuba/dur
execute if score @s ItemA matches 6 run function items:a/radar/dur
execute if score @s ItemA matches 7 run function items:a/enderman_armor/dur
execute if score @s ItemA matches 8 run function items:a/super_armor/dur
execute if score @s ItemA matches 9 run function items:a/random_armor/dur
execute if score @s ItemA matches 10 run function items:a/cactus/dur
execute if score @s ItemA matches 11 run function items:a/barbarian/dur
execute if score @s ItemA matches 12 run function items:a/tank/dur
execute if score @s ItemA matches 13 run function items:a/bat/dur
execute if score @s ItemA matches 14 unless score specialSettings Settings matches 3 run function items:a/dragon/dur
execute if score @s ItemA matches 14 if score specialSettings Settings matches 3 run function items:a/dragon_wars/dur
execute if score @s ItemA matches 15 run function items:a/jet_pack/dur
execute if score @s ItemA matches 16 run function items:a/inspire/dur
execute if score @s ItemA matches 17 run function items:a/true_speed/dur
execute if score @s ItemA matches 18 run function items:a/bunny/dur

#execute if score @s ItemA matches 5 run

execute unless score specialSettings Settings matches 3 if score @s ItemAtmr matches 2.. run function items:a/cooldown
execute if score specialSettings Settings matches 3 run function items:a/dragon_wars/cooldown