#ItemStmr = timer for recharge
#ItemS1 = 0 - n/s 1 - e/w
#check if used 
execute unless score @s ItemStmr matches 1.. as @s[predicate=items:s_hold] at @s anchored eyes run function items:s/wall/ray_start
execute if score @s[predicate=items:s_hold] ICarrot_stick matches 1.. run scoreboard players reset @s ICarrot_stick

#give back
execute if score @s ItemStmr matches 1.. run scoreboard players remove @s ItemStmr 1
execute if score @s ItemStmr matches 1 run function items:s/update
