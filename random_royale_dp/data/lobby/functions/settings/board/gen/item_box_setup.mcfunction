#set new score 
scoreboard players add itemBoxSetup SettingsLob 1 
execute if score itemBoxSetup SettingsLob matches 5.. run scoreboard players set itemBoxSetup SettingsLob 1 

#update
function lobby:settings/cooldown_small
function lobby:settings/display/main

#sound 
scoreboard players operation #music SettingsLob = itemBoxSetup SettingsLob 
function lobby:settings/board/4_music