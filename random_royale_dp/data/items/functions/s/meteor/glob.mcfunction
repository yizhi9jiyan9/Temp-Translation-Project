particle dust 0.286 0.286 0.286 1 ~ ~ ~ .5 .5 .5 0 10 force @a
particle dust 0.161 0.42 0.502 1 ~ ~ ~ .5 .5 .5 0 10 force @a 

scoreboard players remove @s ItemS1 1
execute if score @s ItemS1 matches 1 run function items:s/meteor/boom
execute if score @s ItemS1 matches 0 run scoreboard players set #count ItemS1 0
execute if score @s ItemS1 matches 0 run function items:s/meteor/land_ray