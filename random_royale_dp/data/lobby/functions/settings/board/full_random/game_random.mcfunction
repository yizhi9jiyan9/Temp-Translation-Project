#decide random gamemode 
scoreboard players set max Rand 7
function tools:rand 
scoreboard players operation gamemode Settings = op Rand 

execute if score gamemode Settings matches 0 run function lobby:settings/gamemodes/dm_ffa
execute if score gamemode Settings matches 1 run function lobby:settings/gamemodes/elim_ffa
execute if score gamemode Settings matches 2 run function lobby:settings/gamemodes/dm_team
execute if score gamemode Settings matches 3 run function lobby:settings/gamemodes/elim_team
execute if score gamemode Settings matches 4 run function lobby:settings/gamemodes/stm
execute if score gamemode Settings matches 5 run function lobby:settings/gamemodes/zombie
execute if score gamemode Settings matches 6 run function lobby:settings/gamemodes/weapon
function lobby:settings/display/main

execute if score gamemode Settings matches 0 if entity @e[tag=sett,tag=dm_team] run function lobby:settings/gamemodes/team_switch/dm/to_ffa
execute if score gamemode Settings matches 2 if entity @e[tag=sett,tag=dm_ffa] run function lobby:settings/gamemodes/team_switch/dm/to_team
execute if score gamemode Settings matches 1 if entity @e[tag=sett,tag=elim_team] run function lobby:settings/gamemodes/team_switch/elim/to_ffa
execute if score gamemode Settings matches 3 if entity @e[tag=sett,tag=elim_ffa] run function lobby:settings/gamemodes/team_switch/elim/to_team

#all other settings!
scoreboard players operation gamemode Settings = gamemode SettingsLob
scoreboard players operation deathType Settings = deathType SettingsLob
scoreboard players operation teams Settings = teams SettingsLob
scoreboard players operation livesEnabled Settings = livesEnabled SettingsLob

scoreboard players set max Rand 2
function tools:rand 
scoreboard players operation buildReload Settings = op Rand

scoreboard players set max Rand 2
function tools:rand 
scoreboard players operation buildDestroy Settings = op Rand

scoreboard players set max Rand 2
function tools:rand 
scoreboard players add op Rand 1
scoreboard players operation rounds Settings = op Rand

scoreboard players set max Rand 3
function tools:rand 
scoreboard players add op Rand 1
scoreboard players operation spawnStyle Settings = op Rand

scoreboard players set max Rand 3
function tools:rand 
scoreboard players add op Rand 1
scoreboard players operation itemSetup Settings = op Rand

scoreboard players set max Rand 2
function tools:rand 
scoreboard players operation itemMirror Settings = op Rand

scoreboard players set max Rand 4
function tools:rand 
scoreboard players add op Rand 1
scoreboard players operation itemTmr Settings = op Rand

scoreboard players set max Rand 2
function tools:rand 
scoreboard players operation itemBox Settings = op Rand

scoreboard players set max Rand 4
function tools:rand 
scoreboard players add op Rand 1
scoreboard players operation itemBoxSetup Settings = op Rand

scoreboard players set max Rand 5
function tools:rand 
scoreboard players add op Rand 1
scoreboard players operation scoreToWin Settings = op Rand

scoreboard players set max Rand 4
function tools:rand 
scoreboard players add op Rand 1
scoreboard players operation respawnTime Settings = op Rand

scoreboard players set max Rand 5
function tools:rand 
scoreboard players add op Rand 1
scoreboard players operation lives Settings = op Rand

scoreboard players set max Rand 4
function tools:rand 
scoreboard players operation traitorNum Settings = op Rand

scoreboard players set max Rand 2
function tools:rand 
scoreboard players operation traitorBuff Settings = op Rand

#set gamemode item settings so no break
execute if score gamemode Settings matches 5 run function game:zombie/item_settings
execute if score gamemode Settings matches 6 run function game:weapon/item_settings


#settings work again
scoreboard players set settings Tmr 10
scoreboard players reset fullRandom Tmr
tp @e[type=villager,tag=full_rand] 458.3 137 458.5
setblock 458 140 458 lever[powered=false,face=wall,facing=east] replace