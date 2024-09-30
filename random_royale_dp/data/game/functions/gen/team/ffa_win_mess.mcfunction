team join aWin @a[tag=winner,scores={Player=1..2}]
effect give @a[tag=winner,scores={Player=1..2}] glowing 1000000 0

execute if score #store FFAScores matches 2.. run title @a[scores={Player=1..}] subtitle [{"text":"- ","color":"blue"},{"selector":"@a[tag=winner,scores={Player=1}]","color":"reset"},{"text":" -","color":"blue"}]
execute if score #store FFAScores matches 2.. run title @a[scores={Player=1..}] title ["",{"text":"Many players","color":"gold"},{"text":" win!","color":"blue"}]