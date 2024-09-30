#set gamemode
function lobby:settings/gamemodes/stm


#set other settings
scoreboard players set buildRounds SettingsLob 3
scoreboard players set buildReload SettingsLob 1
scoreboard players set buildStyle SettingsLob 1
scoreboard players set buildMirror SettingsLob 0
scoreboard players set buildDestroy SettingsLob 0

scoreboard players set rounds SettingsLob 1
scoreboard players set spawnStyle SettingsLob 1
scoreboard players set itemSetup SettingsLob 1
scoreboard players set itemMirror SettingsLob 1
scoreboard players set itemBox SettingsLob 1
scoreboard players set itemBoxSetup SettingsLob 2

scoreboard players set traitorNum SettingsLob 0
scoreboard players set traitorBuff SettingsLob 1
scoreboard players set teamNum SettingsLob 4
function lobby:settings/display/main

data modify storage item main set value [5,6]
scoreboard players set m1 ItemList 0
scoreboard players set m2 ItemList 0
scoreboard players set m3 ItemList 0
scoreboard players set m4 ItemList 0
scoreboard players set m5 ItemList 1
scoreboard players set m6 ItemList 1
scoreboard players set m7 ItemList 0
scoreboard players set m8 ItemList 0
scoreboard players set m9 ItemList 0
scoreboard players set m10 ItemList 0
scoreboard players set m11 ItemList 0
scoreboard players set m12 ItemList 0
scoreboard players set m13 ItemList 0
scoreboard players set m14 ItemList 0
scoreboard players set m15 ItemList 0
scoreboard players set m16 ItemList 0
scoreboard players set m17 ItemList 0
scoreboard players set m18 ItemList 0
scoreboard players set mainLength ItemList 2

data modify storage item second set value [1,2,3,4,10,17]
scoreboard players set s1 ItemList 1
scoreboard players set s2 ItemList 1
scoreboard players set s3 ItemList 1
scoreboard players set s4 ItemList 1
scoreboard players set s5 ItemList 0
scoreboard players set s6 ItemList 0
scoreboard players set s7 ItemList 0
scoreboard players set s8 ItemList 0
scoreboard players set s9 ItemList 0
scoreboard players set s10 ItemList 1
scoreboard players set s11 ItemList 0
scoreboard players set s12 ItemList 0
scoreboard players set s13 ItemList 0
scoreboard players set s14 ItemList 0
scoreboard players set s15 ItemList 0
scoreboard players set s16 ItemList 0
scoreboard players set s17 ItemList 1
scoreboard players set s18 ItemList 0
scoreboard players set secondLength ItemList 6

data modify storage item armor set value [1,5,6,12]
scoreboard players set a1 ItemList 1
scoreboard players set a2 ItemList 0
scoreboard players set a3 ItemList 0
scoreboard players set a4 ItemList 0
scoreboard players set a5 ItemList 1
scoreboard players set a6 ItemList 1
scoreboard players set a7 ItemList 0
scoreboard players set a8 ItemList 0
scoreboard players set a9 ItemList 0
scoreboard players set a10 ItemList 0
scoreboard players set a11 ItemList 0
scoreboard players set a12 ItemList 1
scoreboard players set a13 ItemList 0
scoreboard players set a14 ItemList 0
scoreboard players set a15 ItemList 0
scoreboard players set a16 ItemList 0
scoreboard players set a17 ItemList 0
scoreboard players set a18 ItemList 0
scoreboard players set armorLength ItemList 4
execute positioned 470 140 463 run function item_chest:load

#tellraw
tellraw @a[distance=..6] ["",{"text":"[Preset] ","color":"gray"},{"text":"Loaded","color":"yellow"},{"text":" 'Official Super Traitor Mystery'","color":"aqua"},{"text":" preset","color":"yellow"},{"text":"\n   "},{"text":"> Check out the original game here ","color":"yellow","clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/project/super-murder-mystery/"},"hoverEvent":{"action":"show_text","contents":"Click to go to the Super Traitor Mystery website"}},{"text":"[click]","color":"gold","clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/project/super-murder-mystery/"},"hoverEvent":{"action":"show_text","contents":"Click to go to the Super Traitor Mystery website"}},{"text":" ","color":"yellow","clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/project/super-murder-mystery/"}}]

playsound block.enchantment_table.use master @a[distance=..6] ~ ~ ~ 1
scoreboard players set preset Tmr 20