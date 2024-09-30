#fix team spawns if broken
execute as @e[type=marker,tag=map,scores={Team=1..}] at @s if blocks ~-10 ~-2 ~-10 ~10 ~1 ~10 ~ ~ ~-40 masked run place template minecraft:4_fix ~-10 ~-9 ~-10 none none

#general map fixer
#execute if score buildDestroy Settings matches 1 as @e[type=marker,tag=map,scores={NodeConnect=2..}] at @s if blocks ~-3 ~ ~-3 ~3 ~1 ~3 ~ ~ ~-40 masked run function game:gen/map_fixer/place
