scoreboard players set max Rand 100 
function tools:rand 

execute if score op Rand matches 0..10 run scoreboard players set #store Build 1
execute if score op Rand matches 11..50 run scoreboard players set #store Build 2
execute if score op Rand matches 51..75 run scoreboard players set #store Build 3
execute if score op Rand matches 76..99 run scoreboard players set #store Build 4
#tellraw @a {"score":{"name":"#store","objective":"Build"}}
