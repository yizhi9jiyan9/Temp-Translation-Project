scoreboard players set @s Player 0
function lobby:players/lobby_teams
function lobby:parkour/stop
function lobby:players/tp

spawnpoint @s 464 139 462
clear @s
effect clear @s
xp set @s 0 points
xp set @s 0 levels 
gamemode adventure @s

scoreboard players reset @s ICarrot_stick
scoreboard players reset @s LeaveSpectator
scoreboard players reset @s TpBookTrigger
scoreboard players reset @s EndGame
tag @s remove winner

tellraw @s [{"text":"\n"},{"text":"Welcome back to ","color":"yellow"},{"text":"R","bold":true,"color":"dark_red"},{"text":"a","bold":true,"color":"red"},{"text":"n","bold":true,"color":"gold"},{"text":"d","bold":true,"color":"yellow"},{"text":"o","bold":true,"color":"green"},{"text":"m","bold":true,"color":"dark_green"},{"text":" R","bold":true,"color":"dark_green"},{"text":"o","bold":true,"color":"green"},{"text":"y","bold":true,"color":"yellow"},{"text":"a","bold":true,"color":"gold"},{"text":"l","bold":true,"color":"red"},{"text":"e","bold":true,"color":"dark_red"},{"text":"\n"}]

bossbar set red_team players 
bossbar set blue_team players 
bossbar set green_team players 
bossbar set yellow_team players 
bossbar set red_team players @a[scores={Team=1,Player=1}]
bossbar set blue_team players @a[scores={Team=2,Player=1}]
bossbar set green_team players @a[scores={Team=3,Player=1}]
bossbar set yellow_team players @a[scores={Team=4,Player=1}]