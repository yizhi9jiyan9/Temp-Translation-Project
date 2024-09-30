scoreboard players operation #store HoardID = @s HoardID 
tag @s add v
execute as @a[tag=!v] if score @s HoardID = #store HoardID at @s run particle squid_ink ~ ~ ~ .1 .1 .1 0 1 force @a[tag=v]
tag @s remove v