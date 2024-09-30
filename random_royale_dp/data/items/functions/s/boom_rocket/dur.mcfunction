#ItemStmr = timer for recharge
#check if used 
execute if predicate items:s_hold if score @s ICrossbow matches 1.. run scoreboard players set @s ItemStmr 120
execute if predicate items:s_hold if score @s ICrossbow matches 1.. run function items:s/update
execute if predicate items:s_hold if score @s ICrossbow matches 1.. run scoreboard players reset @s ICrossbow

#give back
execute if score @s ItemStmr matches 1.. run scoreboard players remove @s ItemStmr 1
execute if score @s ItemStmr matches 1 run function items:s/update

