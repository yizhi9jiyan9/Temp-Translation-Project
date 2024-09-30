scoreboard players operation #store ItemAtmr = @s ItemAtmr 
scoreboard players operation #store ItemAtmr *= -1 Num
scoreboard players operation #store ItemAtmr /= 20 Num
scoreboard players operation #store ItemAtmr *= -1 Num

kill @e[type=item,nbt={Item:{id:"minecraft:firework_rocket",tag:{armor:1}}}]
execute if score @s ItemA1 matches 1.. run item modify entity @s hotbar.2 items:a_dragon
execute if score @s ItemA1 matches ..0 run item modify entity @s hotbar.2 items:a_cool


