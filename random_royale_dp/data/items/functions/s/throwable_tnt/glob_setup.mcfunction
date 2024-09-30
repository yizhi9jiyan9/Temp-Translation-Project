

#sets new number to snowball
scoreboard players add throwable_tnt ItemStmr 1
scoreboard players operation @s ItemStmr = throwable_tnt ItemStmr

#gives corresponding armor stand number
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["tnt"]}
scoreboard players operation @e[tag=tnt,tag=!setup] ItemStmr = @s ItemStmr
scoreboard players operation @e[tag=tnt,tag=!setup] OuchID = @s OuchID
tag @e[type=armor_stand,tag=tnt,tag=!setup] add setup
tag @s add setup