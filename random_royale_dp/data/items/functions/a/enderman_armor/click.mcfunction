particle portal ~ ~1 ~ .2 .8 .2 .1 100 normal
spreadplayers ~ ~ 0 20 under 103 false @s
playsound entity.enderman.teleport hostile @a ~ ~ ~
scoreboard players set @s ItemAtmr 140
execute at @s run playsound na:audio1 master @s ~ ~ ~ 100
function items:a/update
scoreboard players reset @s ICarrot_stick