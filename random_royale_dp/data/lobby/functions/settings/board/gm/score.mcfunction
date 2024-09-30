#set new score 
scoreboard players add scoreToWin SettingsLob 1 
execute if score scoreToWin SettingsLob matches 6.. run scoreboard players set scoreToWin SettingsLob 1 

#update
function lobby:settings/cooldown_small
function lobby:settings/display/main

#sound 
scoreboard players operation #music SettingsLob = scoreToWin SettingsLob 
function lobby:settings/board/5_music