
scoreboard players reset * HoardID
#set game code
execute as @a[scores={Player=1}] run scoreboard players operation @s HoardID = @s ItemM 
execute as @a[scores={Player=1}] run scoreboard players operation @s HoardOgID = @s ItemM 
execute as @a[scores={Player=1}] run function game:zombie/teams

#scoreboard 
scoreboard objectives setdisplay sidebar.team.aqua HoardID
scoreboard objectives setdisplay sidebar.team.gray HoardID