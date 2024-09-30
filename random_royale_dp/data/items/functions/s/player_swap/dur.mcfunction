#ItemStmr = timer for recharge
#ItemS1 = 0 - n/s 1 - e/w
#check if used 
execute if score @s ICarrot_stick matches 1.. unless score @s ItemStmr matches 1.. as @s[predicate=items:s_hold] run tag @s add v
execute if score @s ICarrot_stick matches 1.. unless score @s ItemStmr matches 1.. as @s[predicate=items:s_hold] at @s anchored eyes run function items:s/player_swap/ray
execute if score @s ICarrot_stick matches 1.. unless score @s ItemStmr matches 1.. as @s[predicate=items:s_hold] run tag @s remove v
execute if score @s[predicate=items:s_hold] ICarrot_stick matches 1.. run scoreboard players reset @s ICarrot_stick

#give back
execute if score @s ItemStmr matches 1.. run scoreboard players remove @s ItemStmr 1
execute if score @s ItemStmr matches 1 run function items:s/update
