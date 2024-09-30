scoreboard players set settings Tmr 10
scoreboard players reset fullRandom Tmr
tp @e[type=villager,tag=full_rand] 458.3 137 458.5

execute positioned 458.3 140 458.5 run tellraw @p [{"text":"[Settings] ","color":"gray"},{"text":"Full Random disabled!","color":"gray"}]


#set correct gamemode 
execute if score gamemode Settings matches 0.. run scoreboard players operation gamemode SettingsLob = gamemode Settings
execute unless score gamemode Settings matches 0.. run scoreboard players set gamemode SettingsLob 0

execute if score gamemode SettingsLob matches 0 run function lobby:settings/gamemodes/dm_ffa
execute if score gamemode SettingsLob matches 1 run function lobby:settings/gamemodes/elim_ffa
execute if score gamemode SettingsLob matches 2 run function lobby:settings/gamemodes/dm_team
execute if score gamemode SettingsLob matches 3 run function lobby:settings/gamemodes/elim_team
execute if score gamemode SettingsLob matches 4 run function lobby:settings/gamemodes/stm


execute if score gamemode SettingsLob matches 0 if entity @e[tag=sett,tag=dm_team] run function lobby:settings/gamemodes/team_switch/dm/to_ffa
execute if score gamemode SettingsLob matches 2 if entity @e[tag=sett,tag=dm_ffa] run function lobby:settings/gamemodes/team_switch/dm/to_team
execute if score gamemode SettingsLob matches 1 if entity @e[tag=sett,tag=elim_team] run function lobby:settings/gamemodes/team_switch/elim/to_ffa
execute if score gamemode SettingsLob matches 3 if entity @e[tag=sett,tag=elim_ffa] run function lobby:settings/gamemodes/team_switch/elim/to_team

#update
function lobby:settings/display/main