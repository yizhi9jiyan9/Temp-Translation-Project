#get random marker
execute if entity @e[type=marker,tag=map,tag=!exploded,scores={NodeConnect=..1}] as @e[type=marker,tag=map,tag=!exploded,scores={NodeConnect=..1},sort=random,limit=1] run tag @s add v 
execute unless entity @e[type=marker,tag=map,tag=v] if entity @e[type=marker,tag=map,tag=!exploded,scores={NodeConnect=..2}] as @e[type=marker,tag=map,tag=!exploded,scores={NodeConnect=..2},sort=random,limit=1] run tag @s add v 
execute unless entity @e[type=marker,tag=map,tag=v] if entity @e[type=marker,tag=map,tag=!exploded,scores={NodeConnect=..3}] as @e[type=marker,tag=map,tag=!exploded,scores={NodeConnect=..3},sort=random,limit=1] run tag @s add v 
execute unless entity @e[type=marker,tag=map,tag=v] if entity @e[type=marker,tag=map,tag=!exploded,scores={NodeConnect=..4}] as @e[type=marker,tag=map,tag=!exploded,scores={NodeConnect=..4},sort=random,limit=1] run tag @s add v 

execute at @e[type=marker,tag=map,tag=v] run summon creeper ~ ~25 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,CanPickUpLoot:1b,Tags:["creeper_strike","v","quiet"]}
execute at @e[type=marker,tag=map,tag=v] run playsound item.goat_horn.sound.3 master @a ~ ~ ~ 5 2

#setup creeper 
scoreboard players set @e[type=creeper,tag=creeper_strike,tag=v] ItemS1 200
scoreboard players set @e[type=creeper,tag=creeper_strike,tag=v] ItemS2 125
tag @e[type=creeper,tag=creeper_strike,tag=v] add setup 
tag @e[type=creeper,tag=creeper_strike,tag=v] remove v

tag @e[type=marker,tag=map,tag=v] add exploded
tag @e[type=marker,tag=map,tag=v] remove v
