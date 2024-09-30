
#tp armor stand to snowball
execute as @e[type=snowball,tag=trap] at @s run function items:s/trap/glob_snowball

#explode snowball
execute as @e[type=minecraft:armor_stand,tag=trap,scores={ItemS1=0..}] at @s unless score @s ItemS1 = @e[type=snowball,tag=trap,sort=nearest,limit=1] ItemS1 run function items:s/trap/glob_explode
execute as @e[type=minecraft:armor_stand,tag=trap,scores={ItemS1=0..}] at @s unless entity @e[type=snowball,tag=trap] run function items:s/trap/glob_explode


#trap
execute as @e[type=minecraft:armor_stand,tag=trap,scores={ItemS1=..-1}] at @s run function items:s/trap/glob_trap
