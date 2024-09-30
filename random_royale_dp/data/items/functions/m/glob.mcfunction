execute as @e[type=armor_stand,tag=carrot_launcher,tag=setup] at @s run function items:m/carrot_launcher/glob
function items:m/boom_bow/glob

execute as @e[type=armor_stand,tag=explosive_wand,tag=setup] at @s run function items:m/explosive_wand/glob
execute as @e[type=minecraft:zombified_piglin,tag=wand_of_underworld,tag=setup] unless data entity @s AngryAt run tp @s ~ ~-300 ~
