execute at @e[type=marker,tag=map,tag=v] run summon creeper ~ ~25 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,CanPickUpLoot:1b,Tags:["creeper_strike","v"]}
execute at @e[type=marker,tag=map,tag=v] run playsound item.goat_horn.sound.3 master @a ~ ~ ~ 5 2
tag @e[type=marker,tag=map,tag=v] add exploded

#setup creeper 
scoreboard players set @e[type=creeper,tag=creeper_strike,tag=v] ItemS1 200
scoreboard players set @e[type=creeper,tag=creeper_strike,tag=v] ItemS2 125
tag @e[type=creeper,tag=creeper_strike,tag=v] add setup 
tag @e[type=creeper,tag=creeper_strike,tag=v] remove v

scoreboard players set @s ItemStmr 6000
function items:s/update