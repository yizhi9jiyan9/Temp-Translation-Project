#if the TP block is invalid, no TP allowed
execute unless block ^ ^ ^.5 air run function items:m/dash_dagger/check_cast
execute unless entity @s[distance=..6] run function items:m/dash_dagger/check_cast

#If conditions are good for TP and the checks past.. do tp/particles
execute if score @s ItemM2 matches 1 unless block ^ ^ ^.5 air run function items:m/dash_dagger/tp
execute if score @s ItemM2 matches 1 unless entity @s[distance=..6] run function items:m/dash_dagger/tp

#if conditions are not right yet, further raycast
execute if score @s ItemM2 matches 1 positioned ^ ^ ^.1 run function items:m/dash_dagger/ray_cast