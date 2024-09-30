#connected to player
execute as @a[scores={Player=1}] run function items:pl_main
kill @e[type=item,nbt={Item:{id:"minecraft:black_stained_glass_pane"}}]



#general, not connected to player
kill @e[type=area_effect_cloud,nbt={Effects:[{Id:14,Amplifier:0b,Duration:10}]}]
execute as @e[type=arrow,tag=!setup] run data merge entity @s {pickup:0b,Tags:["setup"]}
function items:m/glob
function items:s/glob
function items:a/glob

#duel tnt!
