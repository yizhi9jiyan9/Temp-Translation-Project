#detect wins
scoreboard players set #store Lives 0
scoreboard players operation #store Team = @a[scores={Lives=1..},sort=random,limit=1] Team
scoreboard players set #store Lives 1
execute as @a[scores={Lives=1..}] unless score @s Team = #store Team run scoreboard players set #store Lives 0

execute if score #store Lives matches 1 if score #store Team matches 1 run tag @e[type=marker,tag=team,tag=1] add winner
execute if score #store Lives matches 1 if score #store Team matches 2 run tag @e[type=marker,tag=team,tag=2] add winner
execute if score #store Lives matches 1 if score #store Team matches 3 run tag @e[type=marker,tag=team,tag=3] add winner
execute if score #store Lives matches 1 if score #store Team matches 4 run tag @e[type=marker,tag=team,tag=4] add winner

execute if entity @e[type=marker,tag=team,tag=winner] run function game:gen/end_tmr/start
execute unless entity @a[scores={Lives=1..}] run function game:gen/end_tmr/start