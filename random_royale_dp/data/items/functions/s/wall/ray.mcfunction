execute unless block ^ ^ ^.2 air if score @s ICarrot_stick matches 1.. run function items:s/wall/click
execute unless entity @s[distance=..4.8] if score @s ICarrot_stick matches 1.. unless score @s ItemStmr matches 1.. run function items:s/wall/click

execute unless block ^ ^ ^.2 air if score @s ItemS2 matches 2 run particle dust 0.373 0.373 0.373 1 ~ ~1 ~ .5 1 1.5 0 50 force @s
execute unless block ^ ^ ^.2 air if score @s ItemS2 matches 1 run particle dust 0.373 0.373 0.373 1 ~ ~1 ~ 1.5 1 .5 0 50 force @s


execute positioned ^ ^ ^.2 if block ~ ~ ~ air if entity @s[distance=..5] run function items:s/wall/ray