execute as @e[type=marker,tag=map,sort=nearest,limit=1] unless entity @s[tag=exploded] run tag @s add v
execute at @e[type=marker,tag=map,tag=v] run particle dust 1 0 0 3 ~ ~15 ~ 0 15 0 0 10 force @s

execute if entity @e[type=marker,tag=map,tag=v] if score @s ICarrot_stick matches 1.. run function items:s/creeper_strike/start
tag @e[type=marker,tag=map,tag=v] remove v
