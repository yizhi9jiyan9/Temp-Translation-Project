scoreboard players set max Rand 100 
function tools:rand 

execute if score op Rand matches 0..40 run scoreboard players set #store Build 1
execute if score op Rand matches 41..85 run scoreboard players set #store Build 2
execute if score op Rand matches 86..95 run scoreboard players set #store Build 3
execute if score op Rand matches 96..99 run scoreboard players set #store Build 4
#tellraw @a {"score":{"name":"#store","objective":"Build"}}
