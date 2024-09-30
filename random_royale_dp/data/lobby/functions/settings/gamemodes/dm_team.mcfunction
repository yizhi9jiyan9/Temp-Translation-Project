function lobby:settings/cooldown


#set scores that cant change
scoreboard players set gamemode SettingsLob 2
scoreboard players set teams SettingsLob 1
scoreboard players set deathType SettingsLob 0

#set scores that can change


#display
playsound minecraft:ui.loom.select_pattern master @s 466.5 140 456.5 0.4
tellraw @s [{"text":"[设置] ","color":"gray"},{"text":"已选择团队击杀竞技！","color":"green"}]
function lobby:settings/display/main

