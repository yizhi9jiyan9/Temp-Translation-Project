#reset
scoreboard players reset @s DeathTmr
title @s clear
scoreboard players reset @s HealDamage
scoreboard players reset @s Deaths
scoreboard players reset @s HealTmr
function items:s/set
function items:a/set


#set
execute if score itemSetup Settings matches 1 run function items:give/full_inventory_rand
gamemode adventure @s
scoreboard players set @s Player 1
function game:gen/spawn/main
effect give @s resistance 2 10 true