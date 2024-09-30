scoreboard players set max Rand 4 
function tools:rand

execute if score op Rand matches 0 run place template minecraft:meteor ~ ~ ~
execute if score op Rand matches 1 run place template minecraft:meteor ~ ~ ~ 180
execute if score op Rand matches 2 run place template minecraft:meteor ~ ~ ~ clockwise_90
execute if score op Rand matches 3 run place template minecraft:meteor ~ ~ ~ counterclockwise_90
kill @s

