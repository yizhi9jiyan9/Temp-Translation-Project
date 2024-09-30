## This is for detecting click of the gamemode villagers ##
function lobby:settings/cooldown

#set scores that cant change
scoreboard players set gamemode SettingsLob 0
scoreboard players set teams SettingsLob 0
scoreboard players set deathType SettingsLob 0

#set scores that do change from storage
execute if score spawnStyle SettingsLob matches 4.. run scoreboard players set spawnStyle SettingsLob 1 


#update
playsound minecraft:ui.loom.select_pattern master @s 466.5 140 456.5 0.4
tellraw @s [{"text":"[设置] ","color":"gray"},{"text":"已选择FFA击杀竞技！","color":"blue"}]
execute as @a[scores={Player=0}] run function lobby:players/lobby_teams
function lobby:settings/display/main

