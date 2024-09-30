#say they reset
title @s actionbar {"text": "Parkour reset","color":"red"}
execute at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1 0.890899

tp @s 513.56 131.00 463.48 -90 0
function lobby:parkour/stop