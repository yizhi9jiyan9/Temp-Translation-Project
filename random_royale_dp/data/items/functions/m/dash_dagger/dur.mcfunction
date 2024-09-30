#ItemMtmr = timer for recharge


#check if used 
execute if entity @s[predicate=items:m_hold] unless score @s ItemMtmr matches 1.. at @s anchored eyes run scoreboard players set @s ItemM2 1
execute if entity @s[predicate=items:m_hold] unless score @s ItemMtmr matches 1.. at @s anchored eyes run function items:m/dash_dagger/ray_cast
execute if score @s[predicate=items:m_hold] ICarrot_stick matches 1.. run scoreboard players reset @s ICarrot_stick


#give back
execute if score @s ItemMtmr matches 0.. run scoreboard players remove @s ItemMtmr 1
execute if score @s ItemMtmr matches 1.. run function items:m/update