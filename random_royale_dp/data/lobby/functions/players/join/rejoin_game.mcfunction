#idk if anything is needed tbh
effect clear @s
execute if score teams Settings matches 0 run team join Player @s
execute if score teams Settings matches 1 as @s run function lobby:players/color_teams
tag @s remove winner
scoreboard players add @s Deaths 1
