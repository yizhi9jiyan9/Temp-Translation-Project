execute if entity @e[type=marker,tag=team,tag=1,tag=winner] run effect give @a[scores={Player=1..2,Team=1}] glowing 1000000 0
execute if entity @e[type=marker,tag=team,tag=2,tag=winner] run effect give @a[scores={Player=1..2,Team=2}] glowing 1000000 0
execute if entity @e[type=marker,tag=team,tag=3,tag=winner] run effect give @a[scores={Player=1..2,Team=3}] glowing 1000000 0
execute if entity @e[type=marker,tag=team,tag=4,tag=winner] run effect give @a[scores={Player=1..2,Team=4}] glowing 1000000 0

execute if score #store FFAScores matches 2.. run title @a subtitle [{"text":"- ","color":"blue"},{"selector":"@e[tag=team,tag=winner]","color":"gold"},{"text":" -","color":"blue"}]
execute if score #store FFAScores matches 2.. run title @a[scores={Player=1..}] title ["",{"text":"Many teams","color":"gold"},{"text":" win!","color":"blue"}]

