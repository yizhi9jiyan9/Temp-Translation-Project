function lobby:settings/cooldown

#scores that cant change
scoreboard players set gamemode SettingsLob 6
scoreboard players set teams SettingsLob 0
scoreboard players set deathType SettingsLob 0

#scores that can
execute if score spawnStyle SettingsLob matches 4.. run scoreboard players set spawnStyle SettingsLob 1 

#display
playsound minecraft:ui.loom.select_pattern master @s 462.5 140 456.5 0.4
tellraw @s [{"text":"[设置] ","color":"gray"},{"text":"已选择军备竞赛！","color":"dark_purple"}]
execute as @a[scores={Player=0}] run function lobby:players/lobby_teams
function lobby:settings/display/main

