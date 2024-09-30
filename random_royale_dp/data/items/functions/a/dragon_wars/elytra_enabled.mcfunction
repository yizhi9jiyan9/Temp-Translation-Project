

execute if score @s IDamage matches 1.. run scoreboard players set @s ItemA2 1
execute if score @s[nbt={OnGround:0b}] ItemA2 matches 1 run tellraw @s ["",{"text":"Elyra Disabled!","color":"red"},{"text":" Touch ground to re-enable.","color":"yellow"}]
execute if score @s ItemA2 matches 1 run function items:a/update