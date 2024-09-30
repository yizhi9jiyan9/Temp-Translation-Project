execute if score teams Settings matches 0 run tag @a[tag=doin] add goin
execute if score teams Settings matches 1 run tag @e[tag=team] add goin
tag @e[tag=goin] remove v
tag @e[tag=goin] remove done

tellraw @a "\n"

tellraw @a ["",{"text":"-- 各回合获胜者排行榜 --","color":"gold"},{"text":"\n "}]

#number 1
scoreboard players set #store RoundsWon 0
execute as @e[tag=goin] run scoreboard players operation #store RoundsWon > @s RoundsWon
execute as @e[tag=goin] if score @s RoundsWon = #store RoundsWon run tag @s add v
tellraw @a ["",{"text":"1st:","bold":true,"color":"gold"},{"text":" ","color":"gold"},{"selector":"@e[tag=goin,tag=v]","color":"unset"},{"text":" - ","color":"gray"},{"score":{"name":"#store","objective":"RoundsWon"},"color":"gray"},{"text":"\n "}]
tag @e[tag=goin,tag=v] add done
tag @e[tag=goin,tag=v] remove v
#number two
scoreboard players set #store RoundsWon 0
execute as @e[tag=goin,tag=!done] run scoreboard players operation #store RoundsWon > @s RoundsWon
execute as @e[tag=goin,tag=!done] if score @s RoundsWon = #store RoundsWon run tag @s add v
execute if entity @e[tag=goin,tag=v] run tellraw @a ["",{"text":"2nd:","bold":true,"color":"#C0C0C0"},{"text":" ","color":"#C0C0C0"},{"selector":"@e[tag=goin,tag=v]","color":"unset"},{"text":" - ","color":"gray"},{"score":{"name":"#store","objective":"RoundsWon"},"color":"gray"},{"text":"\n "}]
tag @e[tag=goin,tag=v] add done
tag @e[tag=goin,tag=v] remove v
#number three
scoreboard players set #store RoundsWon 0
execute as @e[tag=goin,tag=!done] run scoreboard players operation #store RoundsWon > @s RoundsWon
execute as @e[tag=goin,tag=!done] if score @s RoundsWon = #store RoundsWon run tag @s add v
execute if entity @e[tag=goin,tag=v] run tellraw @a ["",{"text":"3rd:","bold":true,"color":"#CD7F32"},{"text":" ","color":"#CD7F32"},{"selector":"@e[tag=goin,tag=v]","color":"unset"},{"text":" - ","color":"gray"},{"score":{"name":"#store","objective":"RoundsWon"},"color":"gray"},{"text":"\n "}]

tellraw @a "\n"

tag @e[tag=goin] remove v
tag @e[tag=goin] remove done
tag @e[tag=goin] remove goin