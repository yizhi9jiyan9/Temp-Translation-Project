function items:s/update

tag @s add notarget
#find player 
execute if score @s Team matches 1 run tag @a[tag=!notarget,scores={Player=1},team=!Red,sort=random,limit=1] add target
execute if score @s Team matches 2 run tag @a[tag=!notarget,scores={Player=1},team=!Blue,sort=random,limit=1] add target
execute if score @s Team matches 3 run tag @a[tag=!notarget,scores={Player=1},team=!Green,sort=random,limit=1] add target
execute if score @s Team matches 4 run tag @a[tag=!notarget,scores={Player=1},team=!Yellow,sort=random,limit=1] add target
execute unless score @s Team matches 1.. run tag @a[tag=!notarget,scores={Player=1},sort=random,limit=1] add target
tag @s remove notarget

#summon 
summon zombified_piglin ~ ~ ~ {Health:10f,Tags:["staff_of_underworld"],HandItems:[{id:"minecraft:golden_sword",Count:1b},{}],Attributes:[{Name:"generic.max_health",Base:10},{Name:"generic.movement_speed",Base:.3}],AngryAt:[I;1615399313,-900382376,-1387954485,1805930413]}
data modify storage items:piglin UUID set from entity @a[tag=target,limit=1] UUID
data modify entity @e[type=zombified_piglin,tag=staff_of_underworld,tag=!setup,limit=1] AngryAt set from storage items:piglin UUID
data remove storage items:piglin UUID
scoreboard players operation @e[type=zombified_piglin,tag=staff_of_underworld,tag=!setup,limit=1] HitID = @s HitID
tag @e[type=zombified_piglin,tag=staff_of_underworld,tag=!setup,limit=1] add setup

execute if entity @a[tag=target] run tellraw @s ["",{"text":"[Zombie Piglin] ","color":"red"},{"text":"is targeting ","color":"yellow"},{"selector":"@a[tag=target]"}]
execute unless entity @a[tag=target] run tellraw @s ["",{"text":"[Zombie Piglin] ","color":"red"},{"text":"found nothing to target!","color":"yellow"}]
tag @a[tag=target,limit=1] remove target

playsound minecraft:entity.zombie.converted_to_drowned master @a[scores={Player=1..}] ~ ~ ~
scoreboard players reset @s IKills
particle dust 0 0 0 1 ~ ~ ~ 0 0 0 0 10 force
