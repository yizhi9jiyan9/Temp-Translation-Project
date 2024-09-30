
#tp armor stand to snowball
execute as @e[type=snowball,tag=tnt] at @s run function items:s/throwable_tnt/glob_snowball

#explode snowball
execute as @e[type=minecraft:armor_stand,tag=tnt] at @s unless score @s ItemStmr = @e[type=snowball,tag=tnt,sort=nearest,limit=1] ItemStmr run function items:s/throwable_tnt/glob_explode
execute as @e[type=minecraft:armor_stand,tag=tnt] at @s unless entity @e[type=snowball,tag=tnt] run function items:s/throwable_tnt/glob_explode
execute as @e[type=tnt,tag=throwable_tnt,nbt={Fuse:1s}] at @s run summon creeper ~ ~ ~ {Silent:0b,Invulnerable:1b,NoAI:1b,ExplosionRadius:4b,Fuse:0,ignited:1b,ActiveEffects:[{Id:14,Amplifier:0b,Duration:10,ShowParticles:0b}]}
execute as @e[type=tnt,tag=throwable_tnt,nbt={Fuse:1s}] at @s if score specialSettings Settings matches 2 run summon creeper ~ ~ ~ {Silent:0b,Invulnerable:1b,NoAI:1b,ExplosionRadius:6b,Fuse:0,ignited:1b,ActiveEffects:[{Id:14,Amplifier:0b,Duration:10,ShowParticles:0b}]}
execute as @e[type=tnt,tag=throwable_tnt,nbt={Fuse:1s}] at @s run scoreboard players operation @a[distance=..7.5] PosExplodeID = @s OuchID