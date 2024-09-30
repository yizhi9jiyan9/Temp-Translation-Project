#set new score 
scoreboard players add buildReload SettingsLob 1 
execute if score buildReload SettingsLob matches 2.. run scoreboard players set buildReload SettingsLob 0


#update
function lobby:settings/cooldown_small
function lobby:settings/display/main

#sound 
scoreboard players operation #music SettingsLob = buildReload SettingsLob 
function lobby:settings/board/2_music