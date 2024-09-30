#set up you
playsound entity.bat.takeoff hostile @a ~ ~ ~
effect give @s invisibility 10 0 true
effect give @s weakness 10 10 false
effect give @s speed 10 2 false
#execute at @s run playsound na:audio1 master @s ~ ~ ~ 100

#set up bat
function items:a/bat/summon_bat

scoreboard players set @s ItemAtmr 400
function items:a/update
scoreboard players reset @s ICarrot_stick