execute if score @s IDamage matches 1.. run scoreboard players set @s ItemA2 2

execute run scoreboard players add @s ItemA2 1
execute if score @s ItemA2 matches 30.. run scoreboard players set @s ItemA2 0
execute if score @s ItemA2 matches 0 run tellraw @s ["",{"text":"Elyra enabled!","color":"green"}]
execute if score @s ItemA2 matches 0 run function items:a/update