#ItemStmr = timer for recharge
#check if used 
execute if score @s ILingering_potion matches 1.. run scoreboard players set @s ItemStmr 300
execute if score @s ILingering_potion matches 1.. run scoreboard players reset @s ILingering_potion

#give back
execute if score @s ItemStmr matches 1.. run scoreboard players remove @s ItemStmr 1
execute if score @s ItemStmr matches 1 run function items:s/update