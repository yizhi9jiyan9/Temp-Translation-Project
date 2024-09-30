particle dust 0.659 0 0.745 1 ~ ~ ~ .1 .1 .1 .1 1 force @a
particle dust 0.894 0.208 0.78 1 ~ ~ ~ .1 .1 .1 .1 1 normal @a

tp @s ^ ^ ^.1
execute unless block ^.1 ^ ^ air run function items:m/explosive_wand/explode
execute if score @s OuchID matches 1.. unless block ~-.1 ~ ~ air run function items:m/explosive_wand/explode
execute if score @s OuchID matches 1.. unless block ~ ~ ~.1 air run function items:m/explosive_wand/explode
execute if score @s OuchID matches 1.. unless block ~ ~ ~-.1 air run function items:m/explosive_wand/explode
execute if score @s OuchID matches 1.. unless block ~.1 ~ ~ air run function items:m/explosive_wand/explode
execute if score @s OuchID matches 1.. unless block ~ ~.1 ~ air run function items:m/explosive_wand/explode
execute if score @s OuchID matches 1.. unless block ~ ~-.1 ~ air run function items:m/explosive_wand/explode
execute if score @s OuchID matches 1.. positioned ~-1.25 ~-2.25 ~-1.25 if entity @a[dx=0.5,dy=1.5,dz=0.5,scores={Player=1..},tag=!no_explode] positioned ~1.25 ~2.25 ~1.25 run function items:m/explosive_wand/explode