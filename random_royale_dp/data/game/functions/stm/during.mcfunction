
execute as @a[tag=traitor,scores={Player=1}] at @s run particle minecraft:dust 1.000 0.000 0.000 1 ~ ~2.4 ~ 0 0 0 0.2 1 force @a[tag=traitor,distance=0.1..]

#detect wins
execute unless entity @a[scores={Player=1},tag=!traitor] run tag @a[scores={Player=1},tag=traitor] add winner
execute unless entity @a[scores={Player=1},tag=traitor] run tag @a[scores={Player=1},tag=!traitor] add winner

execute if entity @a[scores={Player=1},tag=!traitor,tag=winner] run tellraw @a [{"text":"侦探获胜！","color":"green"}]
execute if entity @a[scores={Player=1},tag=traitor,tag=winner] run tellraw @a [{"text":"杀手获胜！","color":"red"}]

execute if entity @a[tag=winner] run function game:gen/end_tmr/start