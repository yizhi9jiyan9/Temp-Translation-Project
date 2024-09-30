execute as @e[type=marker,tag=rift] at @s run function items:s/rift/reset_rift
execute as @e[type=marker,tag=trap] at @s run fill ~-2 ~-1 ~-2 ~2 ~2 ~2 air replace white_stained_glass
kill @e[tag=setup]
kill @e[type=item]
kill @e[type=area_effect_cloud]