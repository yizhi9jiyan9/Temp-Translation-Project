#Map Gen:
fill 458 141 463 458 141 459 air

#Size: Small, medium, large
data modify storage settings gm append value 1
#Reload: yes, no
execute if score adv SettingsLob matches 1 run data modify storage settings gm append value 2
#Build Style: Random, center heavy, lines, Maximum
execute if score adv SettingsLob matches 1 run data modify storage settings gm append value 3
#Mirrored: yes, no
data modify storage settings gm append value 4
#map fixer: yes, no
execute if score adv SettingsLob matches 1 run data modify storage settings gm append value 5

##Now to place the signs!
execute if data storage minecraft:settings gm[0] positioned 458.5 141.5 463.5 run function lobby:settings/display/map_loop
data remove storage settings gm



#Item Settings:
fill 458 140 463 458 140 459 air

#Item Setup: On round, on death, timer
execute unless score gamemode SettingsLob matches 5..6 run data modify storage settings gm append value 4
#Item Tmr
execute unless score gamemode SettingsLob matches 5..6 if score adv SettingsLob matches 1 if score itemSetup SettingsLob matches 3 run data modify storage settings gm append value 2
#Item Boxes
execute unless score gamemode SettingsLob matches 5..6 run data modify storage settings gm append value 3
#Item Box Settings
execute unless score gamemode SettingsLob matches 5..6 if score adv SettingsLob matches 1 if score itemBox SettingsLob matches 1 run data modify storage settings gm append value 6
#Mirrored Items
execute unless score gamemode SettingsLob matches 5..6 if score itemSetup SettingsLob matches 2..3 run data modify storage settings gm append value 1
#no items!
execute if score gamemode SettingsLob matches 5..6 run data modify storage settings gm append value 5


##Now to place the signs!
execute if data storage minecraft:settings gm[0] positioned 458.5 140.5 463.5 run function lobby:settings/display/item_loop
data remove storage settings gm
