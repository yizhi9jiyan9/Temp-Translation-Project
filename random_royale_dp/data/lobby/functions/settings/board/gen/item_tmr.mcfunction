#set new score 
scoreboard players add itemTmr SettingsLob 1 
execute if score itemTmr SettingsLob matches 5.. run scoreboard players set itemTmr SettingsLob 1 

#update
function lobby:settings/cooldown_small
function lobby:settings/display/main

#sound 
scoreboard players operation #music SettingsLob = itemTmr SettingsLob 
function lobby:settings/board/4_music