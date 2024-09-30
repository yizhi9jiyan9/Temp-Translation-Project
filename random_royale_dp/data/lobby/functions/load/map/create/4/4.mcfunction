scoreboard players set max Rand 4 
function tools:rand

scoreboard players operation #specop Rand = op Rand
execute if score #specop Rand matches 0 run function lobby:load/map/create/4/n
execute if score #specop Rand matches 1 run function lobby:load/map/create/4/e
execute if score #specop Rand matches 2 run function lobby:load/map/create/4/s
execute if score #specop Rand matches 3 run function lobby:load/map/create/4/w

