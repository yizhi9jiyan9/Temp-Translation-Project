#set new score 
scoreboard players add lives SettingsLob 1 
execute if score lives SettingsLob matches 6.. run scoreboard players set lives SettingsLob 1 

#update
function lobby:settings/cooldown_small
function lobby:settings/display/main

#sound 
scoreboard players operation #music SettingsLob = lives SettingsLob 
function lobby:settings/board/5_music