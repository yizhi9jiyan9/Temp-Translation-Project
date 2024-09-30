

#set new record (base), if it is new record
execute if score @s ParkourLoc matches 31 if score @s Parkour >= HS Parkour at @s run playsound entity.villager.celebrate master @s ~ ~ ~ 200
execute if score @s ParkourLoc matches 31 if score @s Parkour < HS Parkour run function lobby:parkour/score_update

#set new record (any%), if it is new record
execute unless score @s ParkourLoc matches 31 at @s run playsound entity.villager.no master @s ~ ~ ~ 200
execute unless score @s ParkourLoc matches 31 run tellraw @s ["",{"text":"\n[Parkour]","color":"dark_aqua"},{"text":" You seem to have found an 'unintended' way up. Welcome to the any% category!","color":"aqua"}]
execute unless score @s ParkourLoc matches 31 if score @s Parkour matches ..369 run tellraw @s ["",{"text":"[Parkour]","color":"dark_aqua"},{"text":" You have also beat the current any% known world record! Join our discord with video proof to get a special in game role.","color":"aqua"},{"text":" ","color":"gray"},{"text":"(Click here for link)","color":"gray","clickEvent":{"action":"open_url","value":"https://discord.gg/RcY3eKWptA"}}]

#say score 
tellraw @s [{"text":"[Parkour] You completed the parkour with a time of","color":"dark_aqua"},{"text":" ","color":"aqua"},{"score":{"name":"#min","objective":"Parkour"},"color":"aqua"},{"text":":","color":"aqua"},{"score":{"name":"#sec","objective":"Parkour"},"color":"aqua"},{"text":".","color":"aqua"},{"score":{"name":"#tick","objective":"Parkour"},"color":"aqua"}]
title @s actionbar {"text": "Parkour completed!","color":"green"}


tp @s 513.56 131.00 463.48
function lobby:parkour/stop