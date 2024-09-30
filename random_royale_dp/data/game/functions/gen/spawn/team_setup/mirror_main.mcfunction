scoreboard players set @e[type=marker,tag=map] Team 0

execute as @e[type=marker,tag=map] at @s run function lobby:load/map/plan/data
execute if score #forever BuildZ matches 1 as @e[type=marker,tag=map] unless score @s BuildX matches 0 run tag @s add v
execute if score #forever BuildZ matches -1 as @e[type=marker,tag=map] unless score @s BuildZ matches 0 run tag @s add v



execute as @e[type=marker,tag=map,tag=v,scores={Team=0,NodeConnect=3..},sort=random,limit=1] run scoreboard players set @s Team 1
execute unless entity @e[type=marker,tag=v,tag=map,scores={Team=1}] as @e[type=marker,tag=v,scores={Team=0},tag=map,sort=random,limit=1] run scoreboard players set @s Team 1

scoreboard players operation #storeX Team = @e[type=marker,tag=map,scores={Team=1},limit=1] BuildX
scoreboard players operation #storeZ Team = @e[type=marker,tag=map,scores={Team=1},limit=1] BuildZ

execute if score #forever BuildZ matches 1 run scoreboard players operation #storeX Team *= -1 Num
execute if score #forever BuildZ matches -1 run scoreboard players operation #storeZ Team *= -1 Num

execute as @e[type=marker,scores={Team=0},tag=map] if score @s BuildX = #storeX Team if score @s BuildZ = #storeZ Team run scoreboard players set @s Team 2
tag @e[type=marker,tag=map,tag=v] remove v

execute unless entity @e[scores={Team=2},tag=map] run function game:gen/spawn/team_setup
