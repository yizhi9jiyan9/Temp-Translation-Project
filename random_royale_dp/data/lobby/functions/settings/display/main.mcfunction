#team random
execute if score teams SettingsLob matches 0 run setblock 464 139 458 air replace
execute if score teams SettingsLob matches 1 run setblock 464 139 458 dark_oak_wall_sign[facing=south]{front_text:{messages:['{"text":"","clickEvent":{"action":"run_command","value":"function lobby:players/rand_teams/main"}}','{"text":"Randomize Teams","color":"green"}','{"text":""}','{"text":""}']}}

#Gamemode selection (which glowing. if team / ffa update is done in the detect function)
effect clear @e[type=armor_stand,tag=sett] glowing
schedule function lobby:settings/display/glow 1t

#bossbar 
execute if score gamemode SettingsLob matches -1 run bossbar set lobby name ["",{"text":"已选择模式：","color":"gray"},{"text":"FULL RANDOM!!","color":"dark_red"}]
execute if score gamemode SettingsLob matches -1 run bossbar set minecraft:lobby color red
execute if score gamemode SettingsLob matches 0 run bossbar set lobby name ["",{"text":"已选择模式：","color":"gray"},{"text":"FFA击杀竞技","color":"blue"}]
execute if score gamemode SettingsLob matches 0 run bossbar set minecraft:lobby color blue
execute if score gamemode SettingsLob matches 1 run bossbar set lobby name ["",{"text":"已选择模式：","color":"gray"},{"text":"FFA大逃杀","color":"red"}]
execute if score gamemode SettingsLob matches 1 run bossbar set minecraft:lobby color red
execute if score gamemode SettingsLob matches 2 run bossbar set lobby name ["",{"text":"已选择模式：","color":"gray"},{"text":"团队击杀竞技","color":"green"}]
execute if score gamemode SettingsLob matches 2 run bossbar set minecraft:lobby color green
execute if score gamemode SettingsLob matches 3 run bossbar set lobby name ["",{"text":"已选择模式：","color":"gray"},{"text":"团队大逃杀","color":"yellow"}]
execute if score gamemode SettingsLob matches 3 run bossbar set minecraft:lobby color yellow
execute if score gamemode SettingsLob matches 4 run bossbar set lobby name ["",{"text":"已选择模式：","color":"gray"},{"text":"密室杀手","color":"aqua"}]
execute if score gamemode SettingsLob matches 4 run bossbar set minecraft:lobby color blue
execute if score gamemode SettingsLob matches 5 run bossbar set lobby name ["",{"text":"已选择模式：","color":"gray"},{"text":"感染","color":"dark_green"}]
execute if score gamemode SettingsLob matches 5 run bossbar set minecraft:lobby color green
execute if score gamemode SettingsLob matches 6 run bossbar set lobby name ["",{"text":"已选择模式：","color":"gray"},{"text":"军备竞赛","color":"dark_purple"}]
execute if score gamemode SettingsLob matches 6 run bossbar set minecraft:lobby color purple

## MAIN BOARD ##
#Map Gen + General Settings
function lobby:settings/display/gen

#Gamemode specific
function lobby:settings/display/gm