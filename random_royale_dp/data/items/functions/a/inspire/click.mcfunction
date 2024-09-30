scoreboard players set @s ItemAtmr 300

effect give @s minecraft:speed 4 1 true
execute if score teams Settings matches 1 run function items:a/inspire/team_buff


execute at @s run playsound na:audio1 master @s ~ ~ ~ 100
function items:a/update
scoreboard players reset @s ICarrot_stick