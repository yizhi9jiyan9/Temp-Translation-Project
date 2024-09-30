
execute store result score #num Team if entity @a[scores={Player=0}]
scoreboard players set @a[scores={Player=0}] Team 0

execute if score teamNum SettingsLob matches 2 if score #num Team matches 5.. run scoreboard players set #num Team 4
execute if score teamNum SettingsLob matches 3 if score #num Team matches 7.. run scoreboard players set #num Team 6

execute if score #num Team matches ..4 run function lobby:players/rand_teams/2
execute if score #num Team matches 5..6 run function lobby:players/rand_teams/3
execute if score #num Team matches 7.. run function lobby:players/rand_teams/4


#sounds 
playsound item.trident.riptide_1 master @a ~ ~ ~ 0.6 
tellraw @a[scores={Player=0}] [{"text":"[Teams]","color":"gray"},{"text":" Teams have been randomized","color":"aqua"}]