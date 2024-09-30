#set new score 
scoreboard players add teamNum SettingsLob 1 
execute if score teamNum SettingsLob matches 5.. run scoreboard players set teamNum SettingsLob 2 

#force leave teams 
execute if score teamNum SettingsLob matches ..2 as @a[scores={Player=0,Team=3..}] run function lobby:players/lobby_teams
execute if score teamNum SettingsLob matches ..3 as @a[scores={Player=0,Team=4..}] run function lobby:players/lobby_teams


#update
function lobby:settings/cooldown_small
function lobby:settings/display/main

#sound 
scoreboard players operation #music SettingsLob = teamNum SettingsLob 
scoreboard players remove #music SettingsLob 1
function lobby:settings/board/3_music