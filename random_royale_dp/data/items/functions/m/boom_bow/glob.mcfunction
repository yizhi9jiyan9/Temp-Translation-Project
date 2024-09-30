
#tp armor_stand to arrow
execute as @e[type=arrow,tag=explosive_arrow,tag=setup] at @s run function items:m/boom_bow/glob_tp


#detect explosion
execute as @e[type=arrow,tag=explosive_arrow,tag=setup] at @s if entity @s[nbt={inGround:1b}] run function items:m/boom_bow/explode

execute as @e[type=minecraft:armor_stand,tag=explosive_arrow] at @s unless score @s ItemMtmr = @e[type=arrow,tag=explosive_arrow,sort=nearest,limit=1] ItemMtmr run function items:m/boom_bow/explode
execute as @e[type=minecraft:armor_stand,tag=explosive_arrow] at @s unless entity @e[type=arrow,tag=explosive_arrow] run function items:m/boom_bow/explode