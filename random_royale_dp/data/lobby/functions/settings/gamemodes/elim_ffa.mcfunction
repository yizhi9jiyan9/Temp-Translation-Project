function lobby:settings/cooldown

#set scores that cant change
scoreboard players set gamemode SettingsLob 1
scoreboard players set teams SettingsLob 0
scoreboard players set deathType SettingsLob 1
scoreboard players set livesEnabled SettingsLob 1

#set scores that can change 
execute if score spawnStyle SettingsLob matches 4.. run scoreboard players set spawnStyle SettingsLob 1 

#display
playsound minecraft:ui.loom.select_pattern master @s 468.5 140 456.5 0.4
tellraw @s [{"text":"[设置] ","color":"gray"},{"text":"已选择FFA大逃杀！","color":"red"}]
execute as @a[scores={Player=0}] run function lobby:players/lobby_teams
function lobby:settings/display/main

