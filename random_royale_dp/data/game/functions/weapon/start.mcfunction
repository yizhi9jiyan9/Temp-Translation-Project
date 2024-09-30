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

#setup scores 
execute if score scoreToWin Settings matches 5 run scoreboard players set scoreToWin Settings 15
execute if score scoreToWin Settings matches 4 run scoreboard players set scoreToWin Settings 12
execute if score scoreToWin Settings matches 3 run scoreboard players set scoreToWin Settings 8
execute if score scoreToWin Settings matches 2 run scoreboard players set scoreToWin Settings 5
execute if score scoreToWin Settings matches 1 run scoreboard players set scoreToWin Settings 3
execute if score specialSettings Settings matches 1 run scoreboard players set scoreToWin Settings 11


#setup the list 
data remove storage weapon new
data remove storage weapon base
data modify storage weapon base set from storage item game.main 
scoreboard players operation #base_list_length WeaponRoyale = mainLength Settings
scoreboard players set #new_list_length WeaponRoyale 0
function game:weapon/setup_list

#give everyone starting item 
execute as @a[scores={Player=1}] run function game:weapon/die


#title 
title @a[scores={Player=1..}] subtitle ["",{"text":"First to ","color":"blue"},{"score":{"name":"scoreToWin","objective":"Settings"},"color":"red"},{"text":" kills wins","color":"blue"}]
title @a[scores={Player=1..}] title {"text":"Weapon Royale!","color":"gold"}

execute store result bossbar game max run scoreboard players get scoreToWin Settings
bossbar set game value 0
bossbar set game name [{"text":"Current Weapon leader: ","color":"gold"},{"text":"N/A","color":"aqua"}]
bossbar set game players
bossbar set game players @a[scores={Player=1..}]
bossbar set game visible true

