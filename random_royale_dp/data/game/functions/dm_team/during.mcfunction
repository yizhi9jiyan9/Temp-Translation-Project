#detect and display scores
#scoreboard players reset @e[type=marker,tag=team] FFAScores
execute as @a[scores={Player=1..2,Team=1}] run scoreboard players operation @e[type=marker,tag=team,tag=1,limit=1] FFAScores += @s FFAScores
scoreboard players operation Red FFAScoresDisp = @e[type=marker,tag=team,tag=1,limit=1] FFAScores

execute as @a[scores={Player=1..2,Team=2}] run scoreboard players operation @e[type=marker,tag=team,tag=2,limit=1] FFAScores += @s FFAScores
scoreboard players operation Blue FFAScoresDisp = @e[type=marker,tag=team,tag=2,limit=1] FFAScores

execute as @a[scores={Player=1..2,Team=3}] run scoreboard players operation @e[type=marker,tag=team,tag=3,limit=1] FFAScores += @s FFAScores
scoreboard players operation Green FFAScoresDisp = @e[type=marker,tag=team,tag=3,limit=1] FFAScores

execute as @a[scores={Player=1..2,Team=4}] run scoreboard players operation @e[type=marker,tag=team,tag=4,limit=1] FFAScores += @s FFAScores
scoreboard players operation Yellow FFAScoresDisp = @e[type=marker,tag=team,tag=4,limit=1] FFAScores
scoreboard players reset @a[scores={Player=1..2}] FFAScores

scoreboard players set #store FFAScores 0
execute as @e[type=marker,tag=team] run scoreboard players operation #store FFAScores > @s FFAScores
execute store result bossbar game value run scoreboard players get #store FFAScores

execute unless score #store FFAScores matches ..0 as @e[type=marker,tag=team] if score @s FFAScores = #store FFAScores run tag @s add v
execute store result score #store FFAScores if entity @e[type=marker,tag=team,tag=v]

execute if score #store FFAScores matches 0 run bossbar set game name [{"text":"Current point leader: ","color":"gold"},{"text":"N/A","color":"aqua"}]
execute if score #store FFAScores matches 1 run bossbar set game name [{"text":"Current point leader: ","color":"gold"},{"selector":"@e[type=marker,tag=team,tag=v]","color":"reset"}]
execute if score #store FFAScores matches 2.. run bossbar set game name [{"text":"Current point leader: ","color":"gold"},{"text":"Contested","color":"aqua"}]
tag @e[type=marker,tag=team,tag=v] remove v

#detect wins
execute as @e[type=marker,tag=team] if score @s FFAScores >= scoreToWin Settings run tag @s add winner
execute if entity @e[tag=winner] run function game:gen/end_tmr/start