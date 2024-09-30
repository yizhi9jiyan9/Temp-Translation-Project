#set new score 
scoreboard players add buildMirror SettingsLob 1 
execute if score buildMirror SettingsLob matches 2.. run scoreboard players set buildMirror SettingsLob 0


#update
function lobby:settings/cooldown_small
function lobby:settings/display/main

#sound 
scoreboard players operation #music SettingsLob = buildMirror SettingsLob 
function lobby:settings/board/2_music