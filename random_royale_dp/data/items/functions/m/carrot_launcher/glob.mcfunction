

execute unless block ~-.3 ~ ~ air run function items:m/carrot_launcher/explode
execute if score @s OuchID matches 1.. unless block ~ ~ ~.3 air run function items:m/carrot_launcher/explode
execute if score @s OuchID matches 1.. unless block ~ ~ ~-.3 air run function items:m/carrot_launcher/explode
execute if score @s OuchID matches 1.. unless block ~.3 ~ ~ air run function items:m/carrot_launcher/explode
execute if score @s OuchID matches 1.. if entity @s[nbt={OnGround:1b}] run function items:m/carrot_launcher/explode