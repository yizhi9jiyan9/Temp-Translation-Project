#set gamemode
function lobby:settings/gamemodes/elim_ffa

execute if entity @e[tag=sett,tag=elim_team] run function lobby:settings/gamemodes/team_switch/elim/to_ffa

#set other settings
scoreboard players set buildRounds SettingsLob 4
scoreboard players set buildReload SettingsLob 1
scoreboard players set buildStyle SettingsLob 1
scoreboard players set buildMirror SettingsLob 0
scoreboard players set buildDestroy SettingsLob 0

scoreboard players set rounds SettingsLob 1
scoreboard players set spawnStyle SettingsLob 3
scoreboard players set itemSetup SettingsLob 2
scoreboard players set itemMirror SettingsLob 0
scoreboard players set itemBox SettingsLob 1
scoreboard players set itemBoxSetup SettingsLob 1

scoreboard players set lives SettingsLob 1
scoreboard players set teamNum SettingsLob 4
function lobby:settings/display/main

data modify storage item second set value [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18]
scoreboard players set s1 ItemList 1
scoreboard players set s2 ItemList 1
scoreboard players set s3 ItemList 1
scoreboard players set s4 ItemList 1
scoreboard players set s5 ItemList 1
scoreboard players set s6 ItemList 1
scoreboard players set s7 ItemList 1
scoreboard players set s8 ItemList 1
scoreboard players set s9 ItemList 1
scoreboard players set s10 ItemList 1
scoreboard players set s11 ItemList 1
scoreboard players set s12 ItemList 1
scoreboard players set s13 ItemList 1
scoreboard players set s14 ItemList 1
scoreboard players set s15 ItemList 1
scoreboard players set s16 ItemList 1
scoreboard players set s17 ItemList 1
scoreboard players set s18 ItemList 1
scoreboard players set secondLength ItemList 18

data modify storage item armor set value [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18]
scoreboard players set a1 ItemList 1
scoreboard players set a2 ItemList 1
scoreboard players set a3 ItemList 1
scoreboard players set a4 ItemList 1
scoreboard players set a5 ItemList 1
scoreboard players set a6 ItemList 1
scoreboard players set a7 ItemList 1
scoreboard players set a8 ItemList 1
scoreboard players set a9 ItemList 1
scoreboard players set a10 ItemList 1
scoreboard players set a11 ItemList 1
scoreboard players set a12 ItemList 1
scoreboard players set a13 ItemList 1
scoreboard players set a14 ItemList 1
scoreboard players set a15 ItemList 1
scoreboard players set a16 ItemList 1
scoreboard players set a17 ItemList 1
scoreboard players set a18 ItemList 1
scoreboard players set armorLength ItemList 18
execute positioned 470 140 463 run function item_chest:load

#tellraw
tellraw @a[distance=..6] ["",{"text":"[Preset] ","color":"gray"},{"text":"Loaded","color":"yellow"},{"text":" 'Battle Royale'","color":"dark_purple"},{"text":" preset","color":"yellow"}]
playsound block.enchantment_table.use master @a[distance=..6] ~ ~ ~ 1
scoreboard players set preset Tmr 20