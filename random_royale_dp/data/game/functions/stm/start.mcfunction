#reset players
tag @a[tag=doin] remove traitor 
bossbar set minecraft:traitor players
bossbar set minecraft:innocent players

#reset game code 


#set players
execute store result score number Player if entity @a[tag=doin]
execute if score number Player matches ..2 if score traitorNum Settings matches 2.. run scoreboard players set traitorNum Settings 1
execute if score number Player matches ..3 if score traitorNum Settings matches 3 run scoreboard players set traitorNum Settings 2

tag @r[tag=doin] add traitor
execute if score traitorNum Settings matches 2.. run tag @r[tag=doin,tag=!traitor] add traitor
execute if score traitorNum Settings matches 3.. run tag @r[tag=doin,tag=!traitor] add traitor

execute if score traitorNum Settings matches 0 if score number Player matches 5.. run tag @r[tag=doin,tag=!traitor] add traitor
execute if score traitorNum Settings matches 0 if score number Player matches 9.. run tag @r[tag=doin,tag=!traitor] add traitor

team join PlayerSTM @a[tag=doin]
execute if score traitorBuff Settings matches 1 run effect give @a[tag=doin,tag=traitor] strength 1000000 0 true
#set game code


#title 
title @a[tag=doin,tag=!traitor] subtitle ["",{"text":"你是侦探","color":"green"}]
title @a[tag=doin,tag=traitor] subtitle ["",{"text":"你是杀手","color":"red"}]
title @a[tag=doin] title {"text":"密室杀手","color":"yellow"}

##tellraws
execute store result score number Player if entity @a[tag=doin,tag=traitor]
tellraw @a[tag=doin] " "

tellraw @a[tag=doin,tag=traitor] ["",{"text":"\n你是杀手.","bold":false,"color":"red"}]
execute if score number Player matches 2.. run tellraw @a[tag=doin,tag=traitor] [{"text":"杀手：","color":"white"},{"text":" ","color":"red"},{"selector":"@a[tag=doin,tag=traitor]","color":"dark_red"}]

tellraw @a[tag=doin,tag=!traitor] {"text":"\n你是侦探.","color":"green","bold":false}

#execute if score number Player matches 1 run tellraw @a[tag=doin] [{"text":"共有 ","color":"red"},{"score":{"name":"number","objective":"Player"},"bold":true,"color":"dark_red"},{"text":" 个杀手。","color":"red"}]
#execute if score number Player matches 2.. run tellraw @a[tag=doin] [{"text":"共有 ","color":"red"},{"score":{"name":"number","objective":"Player"},"bold":true,"color":"dark_red"},{"text":" 个杀手。","color":"red"}]
execute if score number Player matches 1.. run tellraw @a[tag=doin] [{"text":"共有 ","color":"red"},{"score":{"name":"number","objective":"Player"},"bold":true,"color":"dark_red"},{"text":" 个杀手。","color":"red"}]
tellraw @a[tag=doin] " "


##Bossbar setup, omg why is this function so long eee (true sodium coding comment all the way from 2021)
bossbar set minecraft:traitor players @a[tag=doin,tag=traitor]
bossbar set minecraft:innocent players @a[tag=doin,tag=!traitor]


scoreboard players set gamestate Stats 3