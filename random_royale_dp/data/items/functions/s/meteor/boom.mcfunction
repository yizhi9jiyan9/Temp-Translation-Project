summon creeper ~ ~ ~ {Silent:0b,Invulnerable:1b,NoAI:1b,ExplosionRadius:4b,Fuse:0,ignited:1b,ActiveEffects:[{Id:14,Amplifier:0b,Duration:10,ShowParticles:0b}]}
execute if score specialSettings Settings matches 2 run summon creeper ~ ~ ~ {Silent:0b,Invulnerable:1b,NoAI:1b,ExplosionRadius:7b,Fuse:0,ignited:1b,ActiveEffects:[{Id:14,Amplifier:0b,Duration:10,ShowParticles:0b}]}

execute if score @s OuchID matches 1.. run scoreboard players operation @a[scores={Player=1},distance=..8.5] PosExplodeID = @s OuchID

fill ~1 ~ ~1 ~-1 ~20 ~-1 air replace
particle explosion ~ ~10 ~ 1 5 1 .3 30 force
particle explosion_emitter ~ ~ ~ 2 2 2 .3 10 force