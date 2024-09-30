#set new score 
scoreboard players add rounds SettingsLob 1 
execute if score rounds SettingsLob matches 6.. run scoreboard players set rounds SettingsLob 1 

#update
function lobby:settings/cooldown_small
function lobby:settings/display/main

#sound 
scoreboard players operation #music SettingsLob = rounds SettingsLob 
function lobby:settings/board/5_music