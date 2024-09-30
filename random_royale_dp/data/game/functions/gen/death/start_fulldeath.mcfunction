#reset stuff 
scoreboard players reset @s Deaths 



#set stuff
function game:gen/kill/on_kill
gamemode spectator @s
scoreboard players set @s Player 2 
execute if score deathType Settings matches 1 run scoreboard players remove @s Lives 1
execute at @e[type=marker,tag=map,tag=start,limit=1] positioned ~ ~10 ~ run tp @s ~ ~ ~