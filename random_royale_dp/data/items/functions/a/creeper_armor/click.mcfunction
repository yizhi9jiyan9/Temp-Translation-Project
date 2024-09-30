scoreboard players set @s ItemAtmr 140
effect give @s resistance 1 10 true
execute at @s run summon creeper ~ ~ ~ {Silent:1b,Invulnerable:1b,ExplosionRadius:2b,Fuse:1,ignited:1b,ActiveEffects:[{Id:14,Amplifier:0b,Duration:10,ShowParticles:0b}]}
execute at @s run scoreboard players operation @a[distance=..7.5] PosExplodeID = @s HitID
execute at @s run playsound na:audio1 master @s ~ ~ ~ 100
function items:a/update
scoreboard players reset @s ICarrot_stick