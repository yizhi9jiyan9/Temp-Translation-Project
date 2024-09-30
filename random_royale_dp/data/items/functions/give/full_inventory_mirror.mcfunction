##will randomly give all players (everyone with doins tag) the same 3 items and set them up##

#reset old items
execute as @a[tag=doins] run function items:reset_main

#randomonly set which new items player has
function items:give/rand_m
scoreboard players operation @a[tag=doins] ItemM = op2 Rand

function items:give/rand_s
scoreboard players operation @a[tag=doins] ItemS = op2 Rand

function items:give/rand_a
scoreboard players operation @a[tag=doins] ItemA = op2 Rand

#give the players those items
execute as @a[tag=doins] run function items:m/set
execute as @a[tag=doins] run function items:s/set
execute as @a[tag=doins] run function items:a/set

tag @a[tag=doins] remove doins