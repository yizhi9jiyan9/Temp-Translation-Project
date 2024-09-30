execute unless block ^ ^ ^.2 air unless block ~ ~-1 ~ air if score @s ICarrot_stick matches 1.. run function items:s/meteor/click

execute unless block ^ ^ ^.2 air unless block ~ ~-1 ~ air run particle dust 0.286 0.286 0.286 1 ~ ~ ~ .5 .5 .5 0 10 force @s
execute unless block ^ ^ ^.2 air unless block ~ ~-1 ~ air run particle dust 0.161 0.42 0.502 1 ~ ~ ~ .5 .5 .5 0 10 force @s

execute positioned ^ ^ ^.2 if block ~ ~ ~ air if entity @s[distance=..10] run function items:s/meteor/ray