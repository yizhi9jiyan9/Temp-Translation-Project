scoreboard players set @s ItemAtmr 140

effect give @s jump_boost 5 2 false

execute at @s run playsound na:audio1 master @s ~ ~ ~ 100
function items:a/update
scoreboard players reset @s ICarrot_stick