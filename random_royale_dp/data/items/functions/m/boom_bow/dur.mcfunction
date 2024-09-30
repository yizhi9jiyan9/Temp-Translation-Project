#ItemMtmr = timer for recharge
#ItemM1/2/3 = motion stuf


#check if used 
execute if score @s ItemMtmr matches 1.. run scoreboard players remove @s ItemMtmr 1
execute if score @s[predicate=items:m_hold] IBow matches 1.. at @s as @e[type=arrow,sort=nearest,tag=!setup,limit=1] run tag @s add v 
execute if score @s[predicate=items:m_hold] IBow matches 1.. unless score @s ItemMtmr matches 1.. run function items:m/boom_bow/link
tag @e[type=arrow,tag=v] add setup 
tag @e[type=arrow,tag=v] remove v

scoreboard players reset @s IBow