scoreboard players set @s ItemMtmr 20

execute at @s anchored eyes run summon armor_stand ^ ^ ^1.5 {Silent:1b,Pose:{Head:[1f,0f,0f]},Invulnerable:1b,Small:1b,Invisible:1b,Tags:["carrot_launcher"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:carrot",Count:1b}]}

execute store result score @s ItemM1 run data get entity @s Rotation[0] 1
scoreboard players operation @s ItemM1 += 180 Num
execute unless score @s ItemM1 matches ..180 run scoreboard players operation @s ItemM1 -= 360 Num
execute store result entity @e[type=armor_stand,tag=carrot_launcher,tag=!setup,limit=1] Pose.Head[1] float 1 run scoreboard players get @s ItemM1

#motion 
execute as @e[type=armor_stand,tag=carrot_launcher,tag=!setup,limit=1] store result score @s ItemM1 run data get entity @s Pos[0] 1000
execute as @e[type=armor_stand,tag=carrot_launcher,tag=!setup,limit=1] store result score @s ItemM2 run data get entity @s Pos[1] 1000
execute as @e[type=armor_stand,tag=carrot_launcher,tag=!setup,limit=1] store result score @s ItemM3 run data get entity @s Pos[2] 1000
execute store result score @s ItemM1 run data get entity @s Pos[0] 1000
execute store result score @s ItemM2 run data get entity @s Pos[1] 1000
scoreboard players operation @s ItemM2 += 1000 Num
execute store result score @s ItemM3 run data get entity @s Pos[2] 1000

scoreboard players operation @e[type=armor_stand,tag=carrot_launcher,tag=!setup,limit=1] ItemM1 -= @s ItemM1
scoreboard players operation @e[type=armor_stand,tag=carrot_launcher,tag=!setup,limit=1] ItemM2 -= @s ItemM2
scoreboard players operation @e[type=armor_stand,tag=carrot_launcher,tag=!setup,limit=1] ItemM3 -= @s ItemM3

execute as @e[type=armor_stand,tag=carrot_launcher,tag=!setup,limit=1] store result entity @s Motion[0] double .001 run scoreboard players get @s ItemM1
execute as @e[type=armor_stand,tag=carrot_launcher,tag=!setup,limit=1] store result entity @s Motion[1] double .001 run scoreboard players get @s ItemM2
execute as @e[type=armor_stand,tag=carrot_launcher,tag=!setup,limit=1] store result entity @s Motion[2] double .001 run scoreboard players get @s ItemM3

#end it off
scoreboard players operation @e[type=armor_stand,tag=carrot_launcher,tag=!setup,limit=1] OuchID = @s HitID
tag @e[type=armor_stand,tag=carrot_launcher,tag=!setup,limit=1] add setup