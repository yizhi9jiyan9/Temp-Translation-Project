#reset stuff 
scoreboard players reset @s Deaths 




#set stuff
function game:gen/kill/on_kill
scoreboard players set @s Player 2 
scoreboard players operation @s DeathTmr = respawnTime Settings
execute if score deathType Settings matches 1 run scoreboard players remove @s Lives 1
execute if score @s DeathTmr matches 2.. run gamemode spectator @s
execute if score @s DeathTmr matches 2.. at @e[type=marker,tag=map,tag=start,limit=1] positioned ~ ~10 ~ run tp @s ~ ~ ~