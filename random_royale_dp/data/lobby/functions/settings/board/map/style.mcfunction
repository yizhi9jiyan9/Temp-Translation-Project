#set new score 
scoreboard players add buildStyle SettingsLob 1 
execute if score buildStyle SettingsLob matches 5.. run scoreboard players set buildStyle SettingsLob 1

# set the specifics #
#random (nothing, done in map gen) 
#center heavy 
execute if score buildStyle SettingsLob matches 2 run scoreboard players set buildR1 SettingsLob 4
execute if score buildStyle SettingsLob matches 2 run scoreboard players set buildR2 SettingsLob 2
execute if score buildStyle SettingsLob matches 2 run scoreboard players set buildR3 SettingsLob 1
execute if score buildStyle SettingsLob matches 2 run scoreboard players set buildR4 SettingsLob 1
#lines
execute if score buildStyle SettingsLob matches 3 run scoreboard players set buildR1 SettingsLob 2
execute if score buildStyle SettingsLob matches 3 run scoreboard players set buildR2 SettingsLob 1
execute if score buildStyle SettingsLob matches 3 run scoreboard players set buildR3 SettingsLob 1
execute if score buildStyle SettingsLob matches 3 run scoreboard players set buildR4 SettingsLob 1
#max
execute if score buildStyle SettingsLob matches 4 run scoreboard players set buildR1 SettingsLob 4
execute if score buildStyle SettingsLob matches 4 run scoreboard players set buildR2 SettingsLob 4
execute if score buildStyle SettingsLob matches 4 run scoreboard players set buildR3 SettingsLob 4
execute if score buildStyle SettingsLob matches 4 run scoreboard players set buildR4 SettingsLob 4

#update
function lobby:settings/cooldown_small
function lobby:settings/display/main

#sound 
scoreboard players operation #music SettingsLob = buildStyle SettingsLob 
function lobby:settings/board/4_music