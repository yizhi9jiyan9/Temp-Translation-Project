#set new score 
scoreboard players add itemBox SettingsLob 1 
execute if score itemBox SettingsLob matches 2.. run scoreboard players set itemBox SettingsLob 0 

#update
function lobby:settings/cooldown_small
function lobby:settings/display/main

#sound 
scoreboard players operation #music SettingsLob = itemBox SettingsLob 
function lobby:settings/board/2_music