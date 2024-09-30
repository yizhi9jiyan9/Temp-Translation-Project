scoreboard players set @s ItemMtmr 20

execute at @s anchored eyes run summon armor_stand ^ ^ ^2 {Tags:["explosive_wand"],Invisible:1b,Marker:1b,NoGravity:1b}
execute rotated as @s at @s anchored eyes run tp @e[type=armor_stand,tag=explosive_wand,tag=!setup,limit=1] ^ ^ ^1.5 ~ ~

#end it off
scoreboard players operation @e[type=armor_stand,tag=explosive_wand,tag=!setup,limit=1] OuchID = @s HitID
tag @e[type=armor_stand,tag=explosive_wand,tag=!setup,limit=1] add setup

execute at @s run playsound minecraft:item.firecharge.use master @s ~ ~ ~ 0.3