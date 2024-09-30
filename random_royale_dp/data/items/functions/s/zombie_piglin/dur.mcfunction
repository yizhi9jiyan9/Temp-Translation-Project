#ItemStmr = timer for recharge
#check if used 
execute unless score @s ItemStmr matches 1.. as @s[predicate=items:s_hold] at @s anchored eyes run function items:s/zombie_piglin/ray
execute if score @s[predicate=items:s_hold] ICarrot_stick matches 1.. run scoreboard players reset @s ICarrot_stick

#give back
execute if score @s ItemStmr matches 1.. run scoreboard players remove @s ItemStmr 1
execute if score @s ItemStmr matches 1 run function items:s/update
