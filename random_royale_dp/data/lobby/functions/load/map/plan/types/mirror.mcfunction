#find which is longer 
execute store result score #store BuildX if entity @e[type=marker,tag=map,scores={BuildX=0}]
execute store result score #store BuildZ if entity @e[type=marker,tag=map,scores={BuildZ=0}]

#tellraw @a ["",{"text":"On Z=0: "},{"score":{"name":"#store","objective":"BuildZ"}},{"text":"\nOn X=0: "},{"score":{"name":"#store","objective":"BuildX"}}]


#if the Z axis has more stuff on it
execute if score #store BuildZ >= #store BuildX run scoreboard players set #forever BuildZ 1
execute if score #store BuildZ >= #store BuildX store result score #store+ BuildX if entity @e[type=marker,tag=map,scores={BuildX=1..}]
execute if score #store BuildZ >= #store BuildX store result score #store- BuildX if entity @e[type=marker,tag=map,scores={BuildX=..-1}]
execute if score #store BuildZ >= #store BuildX if score #store- BuildX < #store+ BuildX as @e[type=marker,tag=map] if score @s BuildX matches ..-1 run kill @s 
execute if score #store BuildZ >= #store BuildX if score #store- BuildX >= #store+ BuildX as @e[type=marker,tag=map] if score @s BuildX matches 1.. run kill @s 
execute if score #store BuildZ >= #store BuildX as @e[type=marker,tag=map] unless score @s BuildX matches 0 at @s run function lobby:load/map/plan/types/mirror_do_x

#if the X axis has more stuff on it
execute if score #store BuildZ < #store BuildX run scoreboard players set #forever BuildZ -1
execute if score #store BuildZ < #store BuildX store result score #store+ BuildZ if entity @e[type=marker,tag=map,scores={BuildZ=1..}]
execute if score #store BuildZ < #store BuildX store result score #store- BuildZ if entity @e[type=marker,tag=map,scores={BuildZ=..-1}]
execute if score #store BuildZ < #store BuildX if score #store- BuildZ < #store+ BuildZ as @e[type=marker,tag=map] unless score @s BuildZ matches 0.. run kill @s 
execute if score #store BuildZ < #store BuildX if score #store- BuildZ >= #store+ BuildZ as @e[type=marker,tag=map] if score @s BuildZ matches 1.. run kill @s 
execute if score #store BuildZ < #store BuildX as @e[type=marker,tag=map] unless score @s BuildZ matches 0 at @s run function lobby:load/map/plan/types/mirror_do_z