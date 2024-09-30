#timer 
scoreboard players remove @s HealTmr 1
execute if score @s HealTmr matches 0 run effect give @s instant_health 1 0 true
execute if score @s HealTmr matches -40 run scoreboard players set @s HealTmr 1


#start timer
execute if score @s HealDamage matches 1.. run scoreboard players set @s HealTmr 100
execute if score @s HealDamage matches 1.. run scoreboard players reset @s HealDamage

#saturation
execute if score @s FoodLevel matches ..19 run effect give @s saturation 1 10 true 