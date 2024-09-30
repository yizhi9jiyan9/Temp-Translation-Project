execute if score @s OuchID matches 1.. run scoreboard players operation @a[scores={Player=1},distance=..8.5] PosExplodeID = @s OuchID
summon creeper ~ ~ ~ {Silent:0b,Invulnerable:1b,NoAI:1b,ExplosionRadius:1b,Fuse:1,ignited:1b,ActiveEffects:[{Id:14,Amplifier:0b,Duration:10,ShowParticles:0b}]}
execute if score specialSettings Settings matches 2 run summon creeper ~ ~ ~ {Silent:0b,Invulnerable:1b,NoAI:1b,ExplosionRadius:3b,Fuse:0,ignited:1b,ActiveEffects:[{Id:14,Amplifier:0b,Duration:10,ShowParticles:0b}]}

#detect killing
scoreboard players operation #store ItemMtmr = @s ItemMtmr
execute as @e[type=arrow,tag=explosive_arrow] if score @s ItemMtmr = #store ItemMtmr run kill @s
execute as @e[type=armor_stand,tag=explosive_arrow] if score @s ItemMtmr = #store ItemMtmr run kill @s