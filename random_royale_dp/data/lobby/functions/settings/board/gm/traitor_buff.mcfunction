#set new score 
scoreboard players add traitorBuff SettingsLob 1 
execute if score traitorBuff SettingsLob matches 2.. run scoreboard players set traitorBuff SettingsLob 0

#update
function lobby:settings/cooldown_small
function lobby:settings/display/main

#sound 
scoreboard players operation #music SettingsLob = traitorBuff SettingsLob 
function lobby:settings/board/2_music