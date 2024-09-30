execute positioned ~ ~ ~-21 if entity @e[tag=map,distance=..2] at @s run fill ~1 ~-1 ~1 ~-1 ~ ~-10 stone_bricks replace air
execute positioned ~ ~ ~21 if entity @e[tag=map,distance=..2] at @s run fill ~-1 ~-1 ~-1 ~1 ~ ~10 stone_bricks replace air

execute positioned ~-21 ~ ~ if entity @e[tag=map,distance=..2] at @s run fill ~-1 ~-1 ~-1 ~-10 ~ ~1 stone_bricks replace air
execute positioned ~21 ~ ~ if entity @e[tag=map,distance=..2] at @s run fill ~1 ~-1 ~1 ~10 ~ ~-1 stone_bricks replace air

fill ~-3 ~-1 ~-3 ~3 ~ ~3 stone_bricks replace air