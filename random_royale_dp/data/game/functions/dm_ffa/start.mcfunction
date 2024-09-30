#reset players
scoreboard players reset * FFAScoresDisp
scoreboard players set @a[scores={Player=1}] FFAScores 0
scoreboard players set @a[scores={Player=1}] FFAScoresDisp 0
scoreboard players reset @a[scores={Player=1}] DeathTmr



#reset game code 



#set players
scoreboard objectives setdisplay sidebar.team.aqua FFAScoresDisp
scoreboard objectives setdisplay sidebar.team.gold FFAScoresDisp
scoreboard objectives setdisplay sidebar.team.gray FFAScoresDisp

#set game code
execute if score scoreToWin Settings matches 5 run scoreboard players set scoreToWin Settings 15
execute if score scoreToWin Settings matches 4 run scoreboard players set scoreToWin Settings 12
execute if score scoreToWin Settings matches 3 run scoreboard players set scoreToWin Settings 8
execute if score scoreToWin Settings matches 2 run scoreboard players set scoreToWin Settings 5
execute if score scoreToWin Settings matches 1 run scoreboard players set scoreToWin Settings 3

#title 
title @a[scores={Player=1..}] subtitle ["",{"text":"First to ","color":"blue"},{"score":{"name":"scoreToWin","objective":"Settings"},"color":"red"},{"text":" kills wins","color":"blue"}]
title @a[scores={Player=1..}] title {"text":"FFA Deathmatch!","color":"gold"}

execute store result bossbar game max run scoreboard players get scoreToWin Settings
bossbar set game value 0
bossbar set game name [{"text":"Current point leader: ","color":"gold"},{"text":"N/A","color":"aqua"}]
bossbar set game players
bossbar set game players @a[scores={Player=1..}]
bossbar set game visible true

