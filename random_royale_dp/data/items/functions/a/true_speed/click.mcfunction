scoreboard players set @s ItemAtmr 240

effect give @s speed 6 2 true
effect give @s instant_damage 1 0 true

execute at @s run playsound na:audio1 master @s ~ ~ ~ 100
function items:a/update
scoreboard players reset @s ICarrot_stick