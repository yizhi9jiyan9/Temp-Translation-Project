#check if used 
execute if score @s[predicate=items:a_hold] IFirework matches 1.. at @s run function items:a/dragon/click

#give back
execute if score @s ItemAtmr matches 1.. run scoreboard players remove @s ItemAtmr 1
execute if score @s ItemAtmr matches 1 run function items:a/update