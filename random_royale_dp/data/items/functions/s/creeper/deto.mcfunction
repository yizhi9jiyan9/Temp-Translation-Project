effect give @a[scores={Player=1},distance=..6] instant_damage 1 4 true
effect give @a[scores={Player=1},distance=6..8] instant_damage 1 1 true
effect give @a[scores={Player=1},distance=8..10] instant_damage 1 0 true
scoreboard players operation @a[scores={Player=1},distance=..10] HitterID = @s HitID

playsound entity.generic.explode master @a ~ ~ ~ 30
particle minecraft:explosion_emitter ~ ~ ~ 7 7 7 0 50
summon creeper ~ ~ ~ {Tags:["setup"],Silent:0b,Invulnerable:1b,NoAI:1b,ExplosionRadius:2b,Fuse:1,ignited:1b,ArmorItems:[{},{},{},{id:"minecraft:carrot",Count:1b}],ActiveEffects:[{Id:14,Amplifier:0b,Duration:10,ShowParticles:0b}]}
 execute if score specialSettings Settings matches 2 run summon creeper ~ ~ ~ {Silent:0b,Invulnerable:1b,NoAI:1b,ExplosionRadius:5b,Fuse:0,ignited:1b,ActiveEffects:[{Id:14,Amplifier:0b,Duration:10,ShowParticles:0b}]}

kill @s
