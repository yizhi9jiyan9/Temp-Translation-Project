#reset players
scoreboard players reset * FFAScoresDisp 
scoreboard players set @a[scores={Player=1}] FFAScores 0
scoreboard players reset @a[scores={Player=1}] DeathTmr

scoreboard players set @e[tag=team,type=marker] FFAScores 0

execute if entity @e[type=marker,tag=team,tag=1] run scoreboard players set Red FFAScoresDisp 0
execute if entity @e[type=marker,tag=team,tag=2] run scoreboard players set Blue FFAScoresDisp 0
execute if entity @e[type=marker,tag=team,tag=3] run scoreboard players set Green FFAScoresDisp 0
execute if entity @e[type=marker,tag=team,tag=4] run scoreboard players set Yellow FFAScoresDisp 0


#reset game code 



#set players
scoreboard objectives setdisplay sidebar.team.blue FFAScoresDisp
scoreboard objectives setdisplay sidebar.team.red FFAScoresDisp
scoreboard objectives setdisplay sidebar.team.green FFAScoresDisp
scoreboard objectives setdisplay sidebar.team.yellow FFAScoresDisp
scoreboard objectives setdisplay sidebar.team.gold FFAScoresDisp
scoreboard objectives setdisplay sidebar.team.gray FFAScoresDisp

bossbar set red_team players @a[scores={Team=1,Player=1}]
bossbar set blue_team players @a[scores={Team=2,Player=1}]
bossbar set green_team players @a[scores={Team=3,Player=1}]
bossbar set yellow_team players @a[scores={Team=4,Player=1}]


#set game code
execute if score scoreToWin Settings matches 1 run scoreboard players set scoreToWin Settings 5
execute if score scoreToWin Settings matches 2 run scoreboard players set scoreToWin Settings 10
execute if score scoreToWin Settings matches 3 run scoreboard players set scoreToWin Settings 15
execute if score scoreToWin Settings matches 4 run scoreboard players set scoreToWin Settings 20

#title 
title @a[scores={Player=1..}] subtitle ["",{"text":"First team to ","color":"blue"},{"score":{"name":"scoreToWin","objective":"Settings"},"color":"red"},{"text":" kills wins","color":"blue"}]
title @a[scores={Player=1..}] title {"text":"Team Deathmatch!","color":"gold"}

execute store result bossbar game max run scoreboard players get scoreToWin Settings
bossbar set game value 0
bossbar set game name [{"text":"Current point leader: ","color":"gold"},{"text":"N/A","color":"aqua"}]
bossbar set game players
bossbar set game players @a[scores={Player=1..}]
bossbar set game visible true

