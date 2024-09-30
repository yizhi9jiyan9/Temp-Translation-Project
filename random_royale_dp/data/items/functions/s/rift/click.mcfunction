scoreboard players set @s ItemStmr 500
function items:s/update

summon marker ~-3 90 ~-3 {Tags:["rift"]}

execute as @e[type=marker,tag=rift,tag=!setup] at @s as @e[type=marker,tag=box] at @s run function items:give/box/reset_1
execute as @e[type=marker,tag=rift,tag=!setup] at @s run fill ~ ~9 ~ ~7 ~10 ~7 structure_void replace air
execute as @e[type=marker,tag=rift,tag=!setup] at @s run clone ~ ~ ~ ~7 ~31 ~7 ~ ~32 ~ masked move 
execute as @e[type=marker,tag=rift,tag=!setup] at @s as @a[scores={Player=1},dy=21,dx=6,dz=6] at @s run tp @s ~ ~32 ~
execute as @e[type=marker,tag=rift,tag=!setup] at @s run tp @s ~ ~32 ~
execute as @e[type=marker,tag=rift,tag=!setup] at @s run fill ~-1 ~-1 ~-1 ~8 ~32 ~8 structure_void replace air
execute as @e[type=marker,tag=rift,tag=!setup] at @s run playsound block.end_portal.spawn master @a ~ ~ ~ 1


scoreboard players set @e[type=marker,tag=rift,tag=!setup] ItemS1 200 
tag @e[type=marker,tag=rift,tag=!setup] add setup

