

function items:give/box/summon/main 
scoreboard players add #store Box 1

execute if score #store Box < #store2 Box run function items:give/box/summon/big_loop