

#sets new number to snowball
scoreboard players add trap ItemS1 1
scoreboard players operation @s ItemS1 = trap ItemS1

#gives corresponding armor stand number
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["trap"]}
scoreboard players operation @e[tag=trap,tag=!setup] ItemS1 = @s ItemS1
tag @e[type=armor_stand,tag=trap,tag=!setup] add setup
tag @s add setup