
scoreboard players reset * HoardID
#set game code
execute as @a[scores={Player=1}] run scoreboard players operation @s HoardID = @s ItemM 
execute as @a[scores={Player=1}] run scoreboard players operation @s HoardOgID = @s ItemM 
execute as @a[scores={Player=1}] run function game:zombie/teams

#scoreboard 
scoreboard objectives setdisplay sidebar.team.aqua HoardID
scoreboard objectives setdisplay sidebar.team.gray HoardID

#title 
title @a[scores={Player=1..}] subtitle ["",{"text":"最后幸存的武器将获胜！回合数：","color":"blue"},{"score":{"name":"rounds","objective":"Settings"},"color":"red"}]
title @a[scores={Player=1..}] title {"text":"感染！","color":"gold"}
