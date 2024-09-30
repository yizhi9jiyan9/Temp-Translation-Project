#check if used 
execute if score @s[predicate=items:a_hold] IFirework matches 1.. at @s run function items:a/dragon_wars/click

#give back
execute if score @s ItemAtmr matches 1.. run scoreboard players remove @s ItemAtmr 1
execute if score @s ItemAtmr matches 1 run scoreboard players add @s ItemA1 1
execute if score @s ItemAtmr matches 1 run function items:a/update
execute unless score @s ItemAtmr matches 2.. run scoreboard players set @s ItemAtmr 400

#elytra disable!!!!


#phase 1 - elytra enabled
execute if score @s ItemA2 matches 0 run function items:a/dragon_wars/elytra_enabled

#phase 2 - elytra disabled in air
execute if score @s ItemA2 matches 1 run function items:a/dragon_wars/elytra_disabled


#phase 3 - elytra re-enabling
execute if score @s ItemA2 matches 2.. run function items:a/dragon_wars/elytra_tmr
scoreboard players reset @s IDamage



