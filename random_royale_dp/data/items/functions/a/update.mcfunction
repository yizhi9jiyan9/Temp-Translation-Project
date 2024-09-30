## updates what is shown in players inventory. Used on start and on inventory changes ##
kill @e[type=item,nbt={Item:{tag:{armor:1}}}]
clear @s #items:all{armor:1}

execute unless score @s ItemA matches 1.. run function items:a/unset/update
execute if score @s ItemA matches 1 run function items:a/iron_armor/update
execute if score @s ItemA matches 2 run function items:a/speedster_armor/update
execute if score @s ItemA matches 3 run function items:a/assassin_armor/update
execute if score @s ItemA matches 4 run function items:a/creeper_armor/update
execute if score @s ItemA matches 5 run function items:a/scuba/update
execute if score @s ItemA matches 6 run function items:a/radar/update
execute if score @s ItemA matches 7 run function items:a/enderman_armor/update
execute if score @s ItemA matches 8 run function items:a/super_armor/update
execute if score @s ItemA matches 9 run function items:a/random_armor/update
execute if score @s ItemA matches 10 run function items:a/cactus/update
execute if score @s ItemA matches 11 run function items:a/barbarian/update
execute if score @s ItemA matches 12 run function items:a/tank/update
execute if score @s ItemA matches 13 run function items:a/bat/update
execute if score @s ItemA matches 14 unless score specialSettings Settings matches 3 run function items:a/dragon/update
execute if score @s ItemA matches 14 if score specialSettings Settings matches 3 run function items:a/dragon_wars/update
execute if score @s ItemA matches 15 run function items:a/jet_pack/update
execute if score @s ItemA matches 16 run function items:a/inspire/update
execute if score @s ItemA matches 17 run function items:a/true_speed/update
execute if score @s ItemA matches 18 run function items:a/bunny/update




#execute if score @s ItemA matches 5 run 