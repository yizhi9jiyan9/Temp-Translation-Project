
#add zombie to your cause
#done in death

#particles 
execute as @a run function game:zombie/particles

#detect that everyone but 1 player is the same
scoreboard players set #store HoardID 0
scoreboard players operation #store HoardID = @a[scores={Player=1..2},sort=random,limit=1] HoardID
scoreboard players set #store2 HoardID 0
execute as @a[scores={Player=1..2}] unless score @s HoardID = #store HoardID run scoreboard players add #store2 HoardID 1
execute if score #store2 HoardID matches 1 as @a[scores={Player=1..2}] unless score @s HoardID = #store HoardID run effect give @s glowing 1 0 true



#detect wins
scoreboard players set #store HoardID 0
scoreboard players operation #store HoardID = @a[scores={Player=1..2},sort=random,limit=1] HoardID
scoreboard players set #store2 HoardID 1
execute as @a[scores={Player=1..2}] unless score @s HoardID = #store HoardID run scoreboard players set #store2 HoardID 0

execute if score #store2 HoardID matches 1 as @a[scores={Player=1..2}] if score @s HoardOgID = #store HoardID run tag @s add winner

execute if entity @a[scores={Player=1..2},tag=winner] run function game:gen/end_tmr/start
execute unless entity @a[scores={Player=1..2}] run function game:gen/end_tmr/start