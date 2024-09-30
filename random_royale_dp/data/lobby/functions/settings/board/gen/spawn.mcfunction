#set new score 
scoreboard players add spawnStyle SettingsLob 1 
execute if score spawnStyle SettingsLob matches 4.. run scoreboard players set spawnStyle SettingsLob 1 

#update
function lobby:settings/cooldown_small
function lobby:settings/display/main

#sound 
scoreboard players operation #music SettingsLob = spawnStyle SettingsLob 
function lobby:settings/board/3_music