execute if score @s ItemMtmr matches 0.. run scoreboard players remove @s ItemMtmr 1
execute if score @s ItemMtmr matches 0 run function items:m/update

execute unless score @s ItemMtmr matches 1.. if score @s IThrow_bow matches 1.. run scoreboard players set @s ItemM1 1 
execute unless score @s ItemMtmr matches 1.. if score @s IThrow_bow matches 1.. run scoreboard players set @s ItemMtmr 100

scoreboard players reset @s IThrow_bow
scoreboard players reset @s IThrow_crossbow