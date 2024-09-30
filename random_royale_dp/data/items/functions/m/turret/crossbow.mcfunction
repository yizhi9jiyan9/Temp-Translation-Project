execute if score @s ItemMtmr matches 0.. run scoreboard players remove @s ItemMtmr 1
execute if score @s ItemMtmr matches 0 run function items:m/update


execute unless score @s ItemMtmr matches 0.. if score @s IThrow_crossbow matches 1.. run scoreboard players set @s ItemM1 0 
execute unless score @s ItemMtmr matches 0.. if score @s IThrow_crossbow matches 1.. run scoreboard players set @s ItemMtmr 100
execute unless score @s ItemMtmr matches 0.. if score @s IThrow_crossbow matches 1.. run function items:m/update
scoreboard players reset @s IThrow_bow
scoreboard players reset @s IThrow_crossbow