scoreboard players set @s ItemStmr 240
function items:s/update


#summon 
summon minecraft:creeper ~ ~ ~ {CustomNameVisible:1b,Tags:["creeper","v"],powered:1,CanPickUpLoot:0b,Attributes:[{Name:"generic.follow_range",Base:0},{Name:"generic.knockback_resistance",Base:1},{Name:"generic.movement_speed",Base:0}],Silent:1,Invulnerable:1,ExplosionRadius:1,NoAI:1b,Fuse:1000}
effect give @e[type=creeper,tag=v] glowing 100 0 true
scoreboard players set @e[type=creeper,tag=v] ItemStmr 101
scoreboard players operation @e[type=creeper,tag=v] HitID = @s HitID
tag @e[tag=creeper,tag=v] add setup
tag @e[tag=creeper,tag=v] remove v