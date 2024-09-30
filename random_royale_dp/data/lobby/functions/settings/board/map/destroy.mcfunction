#set new score 
scoreboard players add buildDestroy SettingsLob 1 
execute if score buildDestroy SettingsLob matches 2.. run scoreboard players set buildDestroy SettingsLob 0


#update
function lobby:settings/cooldown_small
function lobby:settings/display/main

#sound 
scoreboard players operation #music SettingsLob = buildDestroy SettingsLob 
function lobby:settings/board/2_music