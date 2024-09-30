#check if used 
execute if score @s[predicate=items:a_hold] ICarrot_stick matches 1.. run function items:a/inspire/click

#give back
execute if score @s ItemAtmr matches 1.. run scoreboard players remove @s ItemAtmr 1
execute if score @s ItemAtmr matches 1 run function items:a/update