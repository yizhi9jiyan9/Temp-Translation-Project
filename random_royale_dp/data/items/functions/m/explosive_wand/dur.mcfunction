#ItemMtmr = timer for recharge
#ItemM1/2/3 = motion stuf


#check if used 
execute if score @s[predicate=items:m_hold] ICarrot_stick matches 1.. unless score @s ItemMtmr matches 1.. run function items:m/explosive_wand/summon
execute if score @s[predicate=items:m_hold] ICarrot_stick matches 1.. run scoreboard players reset @s ICarrot_stick


#give back
execute if score @s ItemMtmr matches -1.. run scoreboard players remove @s ItemMtmr 1
execute if score @s ItemMtmr matches 0.. run function items:m/update