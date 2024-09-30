#set new score 
scoreboard players add respawnTime SettingsLob 1 
execute if score respawnTime SettingsLob matches 5.. run scoreboard players set respawnTime SettingsLob 1 

#update
function lobby:settings/cooldown_small
function lobby:settings/display/main

#sound 
scoreboard players operation #music SettingsLob = respawnTime SettingsLob 
function lobby:settings/board/4_music