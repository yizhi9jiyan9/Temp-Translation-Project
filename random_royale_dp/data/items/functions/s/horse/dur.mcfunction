#ItemStmr = timer for recharge
#check if used 
execute if score @s IHorse_spawn_egg matches 1.. at @s run function items:s/horse/summon
execute if score @s IHorse_spawn_egg matches 1.. run scoreboard players reset @s IHorse_spawn_egg

#give back
execute if score @s ItemStmr matches 1.. run scoreboard players remove @s ItemStmr 1
execute if score @s ItemStmr matches 1 run function items:s/update

