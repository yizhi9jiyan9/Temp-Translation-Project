#check if used 
execute if score @s[predicate=items:a_hold] ICarrot_stick matches 1.. run scoreboard players set @s ItemAtmr 500
execute if score @s[predicate=items:a_hold] ICarrot_stick matches 1.. at @s run playsound na:audio1 master @s ~ ~ ~ 100
execute if score @s[predicate=items:a_hold] ICarrot_stick matches 1.. run function items:a/update
execute if score @s[predicate=items:a_hold] ICarrot_stick matches 1.. run scoreboard players reset @s ICarrot_stick

#give back
execute if score @s ItemAtmr matches 1.. run scoreboard players remove @s ItemAtmr 1
execute if score @s ItemAtmr matches 359 run function items:a/update
execute if score @s ItemAtmr matches 1 run function items:a/update