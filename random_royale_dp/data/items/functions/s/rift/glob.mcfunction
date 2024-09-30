scoreboard players remove @s ItemS1 1 
particle portal ~3 ~10 ~3 2 8 2 .3 30 normal
particle reverse_portal ~3 ~10 ~3 2 8 2 .3 30 normal


execute if score @s ItemS1 matches 0 run function items:s/rift/reset_rift