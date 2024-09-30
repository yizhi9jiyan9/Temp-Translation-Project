#detect and display scores (literally just a scoreboard bruhh)
execute as @a[scores={Player=1..2}] run scoreboard players operation @s FFAScoresDisp = @s FFAScores

scoreboard players set #store FFAScores 0
execute as @a[scores={Player=1..2}] run scoreboard players operation #store FFAScores > @s FFAScores
execute store result bossbar game value run scoreboard players get #store FFAScores

execute unless score #store FFAScores matches ..0 as @a[scores={Player=1..2}] if score @s FFAScores = #store FFAScores run tag @s add v
execute store result score #store FFAScores if entity @a[tag=v,scores={Player=1..2}]
execute unless entity @a[tag=v,scores={Player=1..2}] run bossbar set game name [{"text":"Current point leader: ","color":"gold"},{"text":"N/A","color":"aqua"}]
execute if score #store FFAScores matches 1 run bossbar set game name [{"text":"Current point leader: ","color":"gold"},{"selector":"@a[tag=v]","color":"aqua"}]
execute if score #store FFAScores matches 2.. run bossbar set game name [{"text":"Current point leaders: ","color":"gold"},{"selector":"@a[tag=v]","color":"aqua"}]
tag @a[scores={Player=1..2}] remove v

#detect wins
execute as @a[scores={Player=1..2}] if score @s FFAScores >= scoreToWin Settings run tag @s add winner
execute if entity @a[scores={Player=1..2},tag=winner] run function game:gen/end_tmr/start