##will randomly give the player 3 items and set them up##

#reset old items
function items:reset_main

#randomonly set which new items player has
function items:give/rand_m
scoreboard players operation @s ItemM = op2 Rand

function items:give/rand_s
scoreboard players operation @s ItemS = op2 Rand

function items:give/rand_a
scoreboard players operation @s ItemA = op2 Rand

#give the players those items
function items:m/set
function items:s/set
function items:a/set