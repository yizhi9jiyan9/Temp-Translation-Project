execute store result score #store Box if entity @e[type=marker,tag=box]
execute store result score #store2 Box if entity @e[type=marker,tag=map]
scoreboard players operation #store Box *= 100 Num
scoreboard players operation #store Box /= #store2 Box

scoreboard players set max Box 2
execute unless score #store Box matches 121.. run function items:give/box/summon/main