scoreboard players set gamemode SettingsLob -1

#set scores that cant change
scoreboard players set teams SettingsLob 0
scoreboard players set settings Tmr 500000000
scoreboard players set fullRandom Tmr 100

#villager 
execute unless entity @e[type=villager,tag=full_rand] run function lobby:settings/board/full_random/villager
effect give @e[type=villager,tag=full_rand] invisibility 1000000 0 true
tp @e[type=villager,tag=full_rand] 458.3 140 458.5

#update
execute positioned 458.3 140 458.5 run tellraw @p [{"text":"[Settings] ","color":"gray"},{"text":"FULL RANDOM Selected!","color":"#8B0000"}]
execute as @a[scores={Player=0}] run function lobby:players/lobby_teams
function lobby:settings/display/main

execute positioned 458.3 140 458.5 run playsound item.goat_horn.sound.5 master @a ~ ~ ~ 1
execute positioned 458.3 140 458.5 run playsound item.goat_horn.sound.5 master @a ~ ~ ~ 1
