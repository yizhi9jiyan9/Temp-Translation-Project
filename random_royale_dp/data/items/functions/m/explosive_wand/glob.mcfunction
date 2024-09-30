scoreboard players operation #store OuchID = @s OuchID
execute as @a[scores={Player=1}] if score @s HitID = #store OuchID run tag @s add no_explode

function items:m/explosive_wand/raycast
execute if score @s OuchID matches 1.. at @s run function items:m/explosive_wand/raycast
execute if score @s OuchID matches 1.. at @s run function items:m/explosive_wand/raycast
execute if score @s OuchID matches 1.. at @s run function items:m/explosive_wand/raycast
execute if score @s OuchID matches 1.. at @s run function items:m/explosive_wand/raycast
execute if score @s OuchID matches 1.. at @s run function items:m/explosive_wand/raycast
execute if score @s OuchID matches -10 run kill @s

tag @s remove no_explode


