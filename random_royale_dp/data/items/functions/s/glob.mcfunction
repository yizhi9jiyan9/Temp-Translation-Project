#this is for entities that players have summoned using a secondary. They are no longer connected to the player in any way.
function items:s/throwable_tnt/glob
function items:s/trap/glob
execute as @e[type=minecraft:zombified_piglin,tag=zombie_piglin,tag=setup] unless data entity @s AngryAt run tp @s ~ ~-300 ~
execute as @e[type=minecraft:creeper,tag=creeper,tag=setup] at @s run function items:s/creeper/timer
execute as @e[type=minecraft:creeper,tag=creeper_strike,tag=setup] at @s run function items:s/creeper_strike/creeper
execute as @e[type=minecraft:horse,tag=horse,tag=setup] at @s run function items:s/horse/global
execute as @e[type=minecraft:item,nbt={Item:{tag:{horse:1}}}] at @s run kill @s
execute as @e[type=minecraft:egg,tag=bridge_egg,tag=setup] at @s run function items:s/bridge_egg/egg
execute as @e[type=minecraft:marker,tag=bridge_egg,tag=setup] at @s run function items:s/bridge_egg/build
execute as @e[type=minecraft:marker,tag=rift,tag=setup] at @s run function items:s/rift/glob
execute as @e[type=minecraft:marker,tag=meteor,tag=setup] at @s run function items:s/meteor/glob

#execute as @e[type=minecraft:marker,tag=block_break] at @s run particle dust 0 0 0 3 ~ ~ ~ 0 0 0 0 1 force @a
