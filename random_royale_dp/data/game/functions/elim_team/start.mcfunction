#reset players
scoreboard players reset * Lives

#reset game code 



#set players
scoreboard players operation @a[scores={Player=1}] Lives = lives Settings
scoreboard objectives setdisplay sidebar.team.blue Lives
scoreboard objectives setdisplay sidebar.team.red Lives
scoreboard objectives setdisplay sidebar.team.green Lives
scoreboard objectives setdisplay sidebar.team.yellow Lives
scoreboard objectives setdisplay sidebar.team.gold Lives
scoreboard objectives setdisplay sidebar.team.gray Lives
scoreboard objectives setdisplay belowName Lives
bossbar set red_team players @a[scores={Team=1,Player=1}]
bossbar set blue_team players @a[scores={Team=2,Player=1}]
bossbar set green_team players @a[scores={Team=3,Player=1}]
bossbar set yellow_team players @a[scores={Team=4,Player=1}]


#set game code


#title 
title @a[scores={Player=1..}] subtitle ["",{"text":"Last team alive wins! Best of ","color":"blue"},{"score":{"name":"rounds","objective":"Settings"},"color":"red"}]
title @a[scores={Player=1..}] title {"text":"Team Elimination!","color":"gold"}

scoreboard players remove rounds Settings 1
execute store result bossbar game max run scoreboard players get rounds Settings
scoreboard players add rounds Settings 1
#bossbar set game value 0
#bossbar set game name [{"text":"Round ","color":"gold"},{"score":{"name":"round","objective":"Stats"},"color":"gold"}]
#bossbar set game players
#bossbar set game players @a[scores={Player=1..}] 
#bossbar set game visible true


