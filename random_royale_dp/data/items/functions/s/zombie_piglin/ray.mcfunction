execute unless block ^ ^ ^.2 air if score @s ICarrot_stick matches 1.. run function items:s/zombie_piglin/click
execute unless entity @s[distance=..4.8] if score @s ICarrot_stick matches 1.. unless score @s ItemStmr matches 1.. run function items:s/zombie_piglin/click
execute unless block ^ ^ ^.2 air run particle dust 1 0.518 0.518 1 ~ ~1 ~ .5 1 .5 0 3 force @s
execute unless entity @s[distance=..4.8] run particle dust 1 0.518 0.518 1 ~ ~1 ~ .5 1 .5 0 3 force @s


execute positioned ^ ^ ^.2 if block ~ ~ ~ air if entity @s[distance=..5] run function items:s/zombie_piglin/ray