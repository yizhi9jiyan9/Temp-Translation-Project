summon marker ~ ~ ~ {Tags:["v","done","map"]} 

scoreboard players operation @e[type=marker,tag=map,tag=v] BuildX = @s BuildX

scoreboard players operation #store BuildX = @e[type=marker,tag=map,tag=v,limit=1] BuildX
scoreboard players operation #store BuildX *= 21 Num
scoreboard players operation #store BuildX += 1000 Num
scoreboard players remove #store BuildX 1
execute store result entity @e[type=marker,tag=map,tag=v,limit=1] Pos[0] double 1 run scoreboard players get #store BuildX
execute as @e[type=marker,tag=map,tag=v,limit=1] at @s run tp @s ~.5 ~ ~.5


scoreboard players operation @e[type=marker,tag=map,tag=v] BuildZ = @s BuildZ
scoreboard players operation @e[type=marker,tag=map,tag=v] BuildZ *= -1 Num

scoreboard players operation #store BuildZ = @e[type=marker,tag=map,tag=v,limit=1] BuildZ
scoreboard players operation #store BuildZ *= 21 Num
scoreboard players operation #store BuildZ += 1000 Num
execute store result entity @e[type=marker,tag=map,tag=v,limit=1] Pos[2] double 1 run scoreboard players get #store BuildZ
execute as @e[type=marker,tag=map,tag=v,limit=1] at @s run tp @s ~.5 ~ ~.5
tag @e[type=marker,tag=map,tag=v,limit=1] add j

scoreboard players operation @e[type=marker,tag=map,tag=v] Build = @s Build

tag @e[type=marker,tag=map,tag=v] remove v


