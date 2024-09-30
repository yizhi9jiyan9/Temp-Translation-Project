function lobby:settings/cooldown

#scores that cant change
scoreboard players set gamemode SettingsLob 3
scoreboard players set teams SettingsLob 1
scoreboard players set deathType SettingsLob 1
scoreboard players set livesEnabled SettingsLob 1

#scores that can


#display
playsound minecraft:ui.loom.select_pattern master @s 468.5 140 456.5 0.4
tellraw @s [{"text":"[设置] ","color":"gray"},{"text":"已选择团队大逃杀！","color":"yellow"}]
function lobby:settings/display/main

