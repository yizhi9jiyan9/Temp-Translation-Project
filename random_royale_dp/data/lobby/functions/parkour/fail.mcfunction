#say they failed
title @s actionbar {"text": "Parkour failed","color":"red"}

tp @s 513.56 131.00 463.48 -90 0
execute at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 100 0.890899
function lobby:parkour/stop