#set new score 
scoreboard players add buildRounds SettingsLob 1 
execute if score buildRounds SettingsLob matches 5.. run scoreboard players set buildRounds SettingsLob 1 

#update
function lobby:settings/cooldown_small
function lobby:settings/display/main

#sound 
scoreboard players operation #music SettingsLob = buildRounds SettingsLob 
function lobby:settings/board/4_music