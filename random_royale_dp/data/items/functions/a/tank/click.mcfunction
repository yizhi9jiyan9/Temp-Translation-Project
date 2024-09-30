effect give @s resistance 5 2
effect give @s slowness 5 10
execute at @s run playsound na:audio1 master @s ~ ~ ~ 100


scoreboard players set @s ItemAtmr 400
function items:a/update
scoreboard players reset @s ICarrot_stick