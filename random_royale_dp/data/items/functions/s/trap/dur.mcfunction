#ItemStmr = timer for recharge
# - throwable_tnt  = general TNT counter
# - @e[type=snowball] and armorstand = ID system
#check if used 
execute if score @s ISnowball matches 1.. run scoreboard players set @s ItemStmr 300
execute if score @s ISnowball matches 1.. run scoreboard players reset @s ISnowball

#give back
execute if score @s ItemStmr matches 1.. run scoreboard players remove @s ItemStmr 1
execute if score @s ItemStmr matches 1 run function items:s/update


#snowball is yesir 
execute at @s as @e[type=snowball,distance=..3,sort=nearest,tag=!setup,limit=1] run tag @s add trap
execute as @e[type=snowball,tag=!setup,tag=trap] run function items:s/trap/glob_setup