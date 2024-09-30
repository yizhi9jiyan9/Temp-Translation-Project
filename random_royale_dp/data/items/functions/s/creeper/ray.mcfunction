execute unless block ^ ^ ^.2 air if score @s ICarrot_stick matches 1.. run function items:s/creeper/click
execute unless entity @s[distance=..4.8] if score @s ICarrot_stick matches 1.. unless score @s ItemStmr matches 1.. run function items:s/creeper/click
execute unless block ^ ^ ^.2 air run particle dust 0.016 0.655 0.047 1 ~ ~1 ~ .25 .75 .25 0 3 force @s
execute unless entity @s[distance=..4.8] run particle dust 0.016 0.655 0.047 1 ~ ~1 ~ .25 .75 .25 0 3 force @s


execute positioned ^ ^ ^.2 if block ~ ~ ~ air if entity @s[distance=..5] run function items:s/creeper/ray