function lobby:players/bossbar_update

#Joining for not first time
execute as @s[tag=joined] unless score @s GameID = game GameID run function lobby:players/join/rejoin

#rejoining a game
execute as @s[tag=joined] if score @s GameID = game GameID run function lobby:players/join/rejoin_game


#Joining for the first time 
execute as @s[tag=!joined] run function lobby:players/join/first





title @s subtitle " "
title @s title " "
title @s actionbar " "

