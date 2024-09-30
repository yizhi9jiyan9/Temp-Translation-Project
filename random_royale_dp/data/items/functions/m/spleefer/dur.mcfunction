#ItemMtmr = timer for recharge


#check if used 
execute if score @s[predicate=items:m_hold] ICarrot_stick matches 1.. unless score @s ItemMtmr matches 1.. at @s anchored eyes run function items:m/spleefer/ray_cast
execute if score @s[predicate=items:m_hold] ICarrot_stick matches 1.. run scoreboard players reset @s ICarrot_stick


#give back
execute if score @s ItemMtmr matches 0.. run scoreboard players remove @s ItemMtmr 1