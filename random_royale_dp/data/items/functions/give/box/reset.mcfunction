execute as @e[type=marker,tag=box] at @s run fill ~ ~ ~ ~ ~ ~ air
execute as @e[type=marker,tag=box] at @s run clone ~ ~-100 ~ ~ ~-100 ~ ~ ~-1 ~ replace move
kill @e[type=marker,tag=box]
scoreboard players reset box Tmr
scoreboard players reset @a[scores={Player=1..2}] BoxOpen
kill @e[type=armor_stand,tag=box]

