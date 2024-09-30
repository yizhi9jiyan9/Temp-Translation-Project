fill 458 139 463 458 139 459 air

#rounds: (7 -> # of rounds)
data modify storage settings gm append value 7 

#spawnStyle: (8 -> spawn style, no team)
execute if score teams SettingsLob matches 0 if score spawnStyle SettingsLob matches 4.. run scoreboard players set spawnStyle SettingsLob 3
execute if score adv SettingsLob matches 1 if score teams SettingsLob matches 0 run data modify storage settings gm append value 8 

#spawnStyle: (9 -> spawn style, team)
execute if score adv SettingsLob matches 1 if score teams SettingsLob matches 1 run data modify storage settings gm append value 9 

#Deathmatch (1 -> score to win)
execute if score gamemode SettingsLob matches 0..2 unless score gamemode SettingsLob matches 1 run data modify storage settings gm append value 1

#elimination (3 -> number of lives) (yes 3 is before 2 because it makes it less wacky and zany, dont need to worry why
execute if score deathType SettingsLob matches 1 if score livesEnabled SettingsLob matches 1 run data modify storage settings gm append value 3

#Death type 0 (2 -> respawn time)
execute if score adv SettingsLob matches 1 if score deathType SettingsLob matches 0 run data modify storage settings gm append value 2
execute if score adv SettingsLob matches 1 if score deathType SettingsLob matches 1 if score livesEnabled SettingsLob matches 1 if score lives SettingsLob matches 2.. run data modify storage settings gm append value 2

#team (4 -> number of teams)
execute if score adv SettingsLob matches 1 if score teams SettingsLob matches 1 run data modify storage settings gm append value 4

#traitorNum (5 -> number of traitors)
execute if score gamemode SettingsLob matches 4 run data modify storage settings gm append value 5

#traitorBuff (6 -> traitor buff)
execute if score adv SettingsLob matches 1 if score gamemode SettingsLob matches 4 run data modify storage settings gm append value 6

#Weapons in Weapon Royale (1 -> score to win)
execute if score gamemode SettingsLob matches 6 run data modify storage settings gm append value 10

##Now to place the signs!

execute if data storage minecraft:settings gm[0] positioned 458.5 139.5 463.5 run function lobby:settings/display/gm_loop

data remove storage settings gm







