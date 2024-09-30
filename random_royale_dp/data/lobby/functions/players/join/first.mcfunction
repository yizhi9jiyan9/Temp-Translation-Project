scoreboard players set @s Player 0
tellraw @s ["",{"text":"\n"},{"text":"Welcome to ","color":"yellow"},{"text":"R","bold":true,"color":"dark_red"},{"text":"a","bold":true,"color":"red"},{"text":"n","bold":true,"color":"gold"},{"text":"d","bold":true,"color":"yellow"},{"text":"o","bold":true,"color":"green"},{"text":"m","bold":true,"color":"dark_green"},{"text":" R","bold":true,"color":"dark_green"},{"text":"o","bold":true,"color":"green"},{"text":"y","bold":true,"color":"yellow"},{"text":"a","bold":true,"color":"gold"},{"text":"l","bold":true,"color":"red"},{"text":"e","bold":true,"color":"dark_red"},{"text":"! ","bold":true,"color":"black"},{"text":"By: The People on Earth","color":"aqua"},{"text":"\n\n"},{"text":"Before you start your first game:\n1) Check out the ","color":"yellow"},{"text":"Tutorial","color":"gold"},{"text":", which you can find using the ","color":"yellow"},{"text":"Book ","color":"gold"},{"text":"in your inventory. \n2) Than right click the ","color":"yellow"},{"text":"Gamemode","color":"gold"},{"text":" armorstand that interests you.\n3) Check out the ","color":"yellow"},{"text":"Settings Board","color":"gold"},{"text":", which is the left of where you spawn in. If any settings do not make sense, check out the ","color":"yellow"},{"text":"Settings Tutorial","color":"gold"},{"text":" lectern.","color":"yellow"}]
function lobby:players/lobby_teams
function lobby:players/tp
spawnpoint @s 464 139 462
gamemode adventure @s

scoreboard players add num ID 1
scoreboard players operation @s ID = num ID
scoreboard players set @s StuckCount 3

tag @s add joined