#ItemStmr = timer for recharge
#check if used 
execute if score @s IGolden_apple matches 1.. run scoreboard players set @s ItemStmr 200
execute if score @s IGolden_apple matches 1.. run scoreboard players reset @s IGolden_apple

#give back
execute if score @s ItemStmr matches 1.. run scoreboard players remove @s ItemStmr 1
execute if score @s ItemStmr matches 1 run function items:s/update

