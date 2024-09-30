#check if used 
execute if score @s[predicate=items:a_hold] ICarrot_stick matches 1.. at @s run function items:a/bat/click

#bat time 


#give back
execute if score @s ItemAtmr matches 1.. run scoreboard players remove @s ItemAtmr 1
execute if score @s ItemAtmr matches 200.. at @s run function items:a/bat/bat_time
execute if score @s ItemAtmr matches 199 at @s run function items:a/bat/bat_end
execute if score @s ItemAtmr matches 1 run function items:a/update