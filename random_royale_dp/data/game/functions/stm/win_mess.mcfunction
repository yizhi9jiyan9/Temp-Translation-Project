effect give @a[scores={Player=1},tag=winner] glowing 1000000 0

title @a subtitle [{"text":"- ","color":"blue"},{"selector":"@a[tag=winner]","color":"gold"},{"text":" -","color":"blue"}]
execute if entity @a[scores={Player=1},tag=winner,tag=traitor] run title @a[scores={Player=1..}] title ["",{"text":"杀手","color":"red"},{"text":" 获胜！","color":"blue"}]
execute if entity @a[scores={Player=1},tag=winner,tag=!traitor] run title @a[scores={Player=1..}] title ["",{"text":"侦探","color":"green"},{"text":" 获胜！","color":"blue"}]


