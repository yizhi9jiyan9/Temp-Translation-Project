#ItemStmr = timer for recharge
#check if used 
execute if score @s IEgg matches 1.. run scoreboard players set @s ItemStmr 500
execute if score @s IEgg matches 1.. run tag @e[type=egg,sort=nearest,tag=!setup] add bridge_egg
execute if score @s IEgg matches 1.. run tag @e[type=egg,sort=nearest,tag=!setup] add setup
execute if score @s IEgg matches 1.. run function items:s/update
execute if score @s IEgg matches 1.. run scoreboard players reset @s IEgg

#give back
execute if score @s ItemStmr matches 1.. run scoreboard players remove @s ItemStmr 1
execute if score @s ItemStmr matches 1 run function items:s/update