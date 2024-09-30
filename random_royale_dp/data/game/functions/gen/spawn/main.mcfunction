tag @s remove rerespawn
scoreboard players set @s SafetyTmr 40

#normal 
execute if score spawnStyle Settings matches 1 run spreadplayers 1000.5 1000.5 0 120 under 103 false @s

#central 
execute if score buildRounds Settings matches 1 if score spawnStyle Settings matches 2 run spreadplayers 1000.5 1000.5 0 10 under 103 false @s
execute if score buildRounds Settings matches 2 if score spawnStyle Settings matches 2 run spreadplayers 1000.5 1000.5 0 10 under 103 false @s
execute if score buildRounds Settings matches 3 if score spawnStyle Settings matches 2 run spreadplayers 1000.5 1000.5 0 25 under 103 false @s
execute if score buildRounds Settings matches 4 if score spawnStyle Settings matches 2 run spreadplayers 1000.5 1000.5 0 40 under 103 false @s

#outer
execute if score spawnStyle Settings matches 3 run function game:gen/spawn/outer

#teams 
scoreboard players operation #store Team = @s Team
tag @s add v
execute if score spawnStyle Settings matches 4 as @e[type=marker,tag=map,scores={Team=1..}] if score @s Team = #store Team at @s run spreadplayers ~ ~ 0 10 under 103 false @a[tag=v]

effect give @s slowness 1 10 true
effect give @s minecraft:jump_boost 1 200 true
effect give @s resistance 5 10 true

#check 
execute at @s if entity @a[scores={Player=1},distance=..3,tag=!v] run tag @s add rerespawn
tag @s remove v
execute if entity @s[predicate=game:re_respawn] run tag @s add rerespawn
execute if entity @s[tag=rerespawn] run function game:gen/spawn/main