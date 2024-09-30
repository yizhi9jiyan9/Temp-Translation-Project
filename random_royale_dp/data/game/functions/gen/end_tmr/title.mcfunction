title @a[scores={Player=1..}] times 20 100 40
title @a[scores={Player=1..}] subtitle " "

execute unless entity @e[tag=winner] run title @a[scores={Player=1..}] title [{"text":"No-one wins?","color":"blue"}]
execute unless score gamemode Settings matches 4..5 if score #store FFAScores matches 1 run title @a[scores={Player=1..}] title ["",{"selector":"@e[tag=winner]","color":"reset"},{"text":" wins!","color":"blue"}]
execute unless score gamemode Settings matches 4..5 if score teams Settings matches 0 run function game:gen/team/ffa_win_mess
execute unless score gamemode Settings matches 4..5 if score teams Settings matches 1 run function game:gen/team/team_win_mess
execute if score gamemode Settings matches 4 run function game:stm/win_mess
execute if score gamemode Settings matches 5 run function game:zombie/win_mess

