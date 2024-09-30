#set new score 
scoreboard players add traitorNum SettingsLob 1 
execute if score traitorNum SettingsLob matches 4.. run scoreboard players set traitorNum SettingsLob 0

#update
function lobby:settings/cooldown_small
function lobby:settings/display/main

#sound 
scoreboard players operation #music SettingsLob = traitorNum SettingsLob 
scoreboard players add traitorNum SettingsLob 1
function lobby:settings/board/4_music