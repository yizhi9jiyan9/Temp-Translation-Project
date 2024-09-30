scoreboard players set #store1 Settings 0
scoreboard players set #store2 Settings 0
scoreboard players set #storeT Settings 0

execute store result score #store1 Settings if entity @e[type=marker,tag=map,scores={BuildX=1..}]
execute store result score #storeT Settings if entity @e[type=marker,tag=map,scores={BuildZ=1..}]
scoreboard players operation #store1 Settings += #storeT Settings

execute store result score #store2 Settings if entity @e[type=marker,tag=map,scores={BuildX=2..}]
execute store result score #storeT Settings if entity @e[type=marker,tag=map,scores={BuildZ=2..}]
scoreboard players operation #store2 Settings += #storeT Settings


#for things
execute unless score #store1 Settings matches 3.. run spreadplayers 1000.5 1000.5 0 120 under 103 false @s
execute if score #store1 Settings matches 3.. unless score #store2 Settings matches 5.. run function game:gen/spawn/o1
execute if score #store2 Settings matches 5.. run function game:gen/spawn/o2
