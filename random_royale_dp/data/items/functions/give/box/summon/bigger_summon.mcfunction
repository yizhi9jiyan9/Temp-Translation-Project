execute store result score #store2 Box if entity @e[type=marker,tag=map]
scoreboard players operation #store2 Box *= 85 Num
scoreboard players operation #store2 Box /= 100 Num


scoreboard players set #store Box 0
scoreboard players set max Box 1
function items:give/box/summon/big_loop