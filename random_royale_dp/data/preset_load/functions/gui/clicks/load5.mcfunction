#set gamemode
function lobby:settings/gamemodes/weapon


#set other settings
scoreboard players set buildRounds SettingsLob 2
scoreboard players set buildReload SettingsLob 1
scoreboard players set buildStyle SettingsLob 1
scoreboard players set buildMirror SettingsLob 0
scoreboard players set buildDestroy SettingsLob 0

scoreboard players set rounds SettingsLob 1
scoreboard players set spawnStyle SettingsLob 1
scoreboard players set respawnTime SettingsLob 2
scoreboard players set teamNum SettingsLob 4
scoreboard players set scoreToWin SettingsLob 3
#^^ Needs to be 11 actually but rn is 8 ^^#

function lobby:settings/display/main

#items
#items
data modify storage item main set value [1,2,3,4,5,7,8,11,13,16,18]
scoreboard players set m1 ItemList 1
scoreboard players set m2 ItemList 1
scoreboard players set m3 ItemList 1
scoreboard players set m4 ItemList 1
scoreboard players set m5 ItemList 1
scoreboard players set m6 ItemList 0
scoreboard players set m7 ItemList 1
scoreboard players set m8 ItemList 1
scoreboard players set m9 ItemList 0
scoreboard players set m10 ItemList 0
scoreboard players set m11 ItemList 1
scoreboard players set m12 ItemList 0
scoreboard players set m13 ItemList 1
scoreboard players set m14 ItemList 0
scoreboard players set m15 ItemList 0
scoreboard players set m16 ItemList 1
scoreboard players set m17 ItemList 0
scoreboard players set m18 ItemList 1
scoreboard players set mainLength ItemList 11

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
tellraw @a[distance=..6] ["",{"text":"[Preset] ","color":"gray"},{"text":"Loaded","color":"yellow"},{"text":" Melee Mastery'","color":"blue","italic":false},{"text":" preset","color":"yellow"}]
playsound block.enchantment_table.use master @a[distance=..6] ~ ~ ~ 1
scoreboard players set preset Tmr 20