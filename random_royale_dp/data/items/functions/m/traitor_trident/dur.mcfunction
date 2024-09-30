execute store result score #store ITrident run clear @s trident{main:1} 0
#if trident thrown, IMain1 -> 1 and trident set IMain1
execute if score @s ITrident matches 1 unless score @s ItemM1 matches 1 run scoreboard players add @e[type=trident] ItemM1 0
execute if score @s ITrident matches 1 unless score @s ItemM1 matches 1 run scoreboard players operation @e[type=trident,sort=nearest,scores={ItemM1=0},limit=1] ItemM1 = @s ID 
execute if score @s ITrident matches 1 unless score @s ItemM1 matches 1 run scoreboard players set @s ItemM1 1


#if trident returned, ITrident goes from 1 -> 0
execute if score @s ItemM1 matches 1 if score #store ITrident matches 1.. run scoreboard players set @s ItemM1 0


#if trident disappears, ITrident goes from 1 -> 0
execute if score @s ItemM1 matches 1 run scoreboard players operation #store ItemM1 = @s ID
execute if score @s ItemM1 matches 1 as @e[type=trident,scores={ItemM1=1..}] if score @s ItemM1 = #store ItemM1 run scoreboard players set #store ItemM1 -10
execute if score @s ItemM1 matches 1 unless score #store ItemM1 matches -10 run scoreboard players set @s ItemM1 0


scoreboard players reset @s ITrident