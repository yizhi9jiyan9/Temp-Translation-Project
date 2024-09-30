summon minecraft:tnt ~ ~ ~ {Fuse:25s,Tags:["throwable_tnt","v"]}
scoreboard players operation @e[type=tnt,tag=throwable_tnt,tag=v] OuchID = @s OuchID
tag @e[type=tnt,tag=throwable_tnt,tag=v] remove v
kill @s