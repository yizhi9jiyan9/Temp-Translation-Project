#set new score 
scoreboard players add itemSetup SettingsLob 1 
execute if score itemSetup SettingsLob matches 4.. run scoreboard players set itemSetup SettingsLob 1 

#update
function lobby:settings/cooldown_small
function lobby:settings/display/main

#sound 
scoreboard players operation #music SettingsLob = itemSetup SettingsLob 
function lobby:settings/board/3_music