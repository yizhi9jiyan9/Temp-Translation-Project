execute if score @s OuchID matches 1.. run scoreboard players operation @a[scores={Player=1},distance=..8.5] PosExplodeID = @s OuchID
summon creeper ~ ~ ~ {Silent:0b,Invulnerable:1b,NoAI:1b,ExplosionRadius:2b,Fuse:0,ignited:1b,ActiveEffects:[{Id:14,Amplifier:0b,Duration:10,ShowParticles:0b}]}
execute if score specialSettings Settings matches 2 run summon creeper ~ ~ ~ {Silent:0b,Invulnerable:1b,NoAI:1b,ExplosionRadius:3b,Fuse:0,ignited:1b,ActiveEffects:[{Id:14,Amplifier:0b,Duration:10,ShowParticles:0b}]}

scoreboard players set @s OuchID -10