#get number 
execute if score scoreToWin SettingsLob matches 5 run scoreboard players set #store ItemList 15
execute if score scoreToWin SettingsLob matches 4 run scoreboard players set #store ItemList 12
execute if score scoreToWin SettingsLob matches 3 run scoreboard players set #store ItemList 8
execute if score scoreToWin SettingsLob matches 2 run scoreboard players set #store ItemList 5
execute if score scoreToWin SettingsLob matches 1 run scoreboard players set #store ItemList 3

scoreboard players operation #store ItemList -= mainLength ItemList

#tellraw 
tellraw @a ["",{"text":"[Start] ","color":"gray"},{"text":"You need to enable at least ","color":"red"},{"score":{"name":"#store","objective":"ItemList"},"color":"dark_red"},{"text":" more main weapons","color":"red"}]
