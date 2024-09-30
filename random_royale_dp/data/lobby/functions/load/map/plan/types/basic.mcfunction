summon marker 1000 99 1000 {Tags:["map","start"]}


##ROUND ONE
execute if score buildRounds Settings matches 1.. run scoreboard players operation #store Build = buildR1 Settings
execute if score buildRounds Settings matches 1.. run scoreboard players set #r1 Build 1
execute if score buildRounds Settings matches 1.. as @e[type=marker,tag=map,tag=!done] at @s run function lobby:load/map/plan/summon_start

##ROUND TWO
execute if score buildRounds Settings matches 2.. run scoreboard players operation #store Build = buildR2 Settings
execute if score buildRounds Settings matches 2.. run scoreboard players set #r1 Build 0
execute if score buildRounds Settings matches 2.. as @e[type=marker,tag=map,tag=!done] at @s run function lobby:load/map/plan/summon_start

##ROUND THREE
execute if score buildRounds Settings matches 3.. run scoreboard players operation #store Build = buildR3 Settings
execute if score buildRounds Settings matches 3.. as @e[type=marker,tag=map,tag=!done] at @s run function lobby:load/map/plan/summon_start

##ROUND THREE
execute if score buildRounds Settings matches 4.. run scoreboard players operation #store Build = buildR4 Settings
execute if score buildRounds Settings matches 4.. as @e[type=marker,tag=map,tag=!done] at @s run function lobby:load/map/plan/summon_start


execute as @e[type=marker,tag=map] run function lobby:load/map/plan/data