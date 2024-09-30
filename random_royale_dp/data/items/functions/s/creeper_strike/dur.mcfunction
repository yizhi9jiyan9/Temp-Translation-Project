#ItemStmr = timer for recharge
#check if used 

execute store result score #map_number ItemStmr if entity @e[type=marker,tag=map,tag=!exploded]
execute if score #map_number ItemStmr matches 2.. unless score @s ItemStmr matches 1.. as @s[predicate=items:s_hold] at @s anchored eyes run function items:s/creeper_strike/highlight
execute if score @s[predicate=items:s_hold] ICarrot_stick matches 1.. run scoreboard players reset @s ICarrot_stick

#give back
execute if score @s ItemStmr matches 1.. run scoreboard players remove @s ItemStmr 1
execute if score @s ItemStmr matches 1 run function items:s/update
