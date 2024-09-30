
#if no bat 
scoreboard players operation #store ID = @s ID 
execute rotated as @s as @e[type=bat,tag=bat_armor,tag=setup] if score @s ItemA1 = #store ID run scoreboard players set #store ID -1
execute unless score #store ID matches -1 run function items:a/bat/summon_bat

#tp
scoreboard players operation #store ID = @s ID 
execute rotated as @s as @e[type=bat,tag=bat_armor,tag=setup] if score @s ItemA1 = #store ID run tp @s ^ ^.5 ^.1 ~ ~ 