#set new score 
scoreboard players add itemMirror SettingsLob 1 
execute if score itemMirror SettingsLob matches 2.. run scoreboard players set itemMirror SettingsLob 0 

#update
function lobby:settings/cooldown_small
function lobby:settings/display/main

#sound 
scoreboard players operation #music SettingsLob = itemMirror SettingsLob 
function lobby:settings/board/2_music