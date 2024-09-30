##What runs every tick as each player##

execute unless score @s ItemM matches 0.. run function items:m/unset/dur
execute if score @s ItemM matches 1 run function items:m/diamond_sword/dur
execute if score @s ItemM matches 2 run function items:m/iron_axe/dur
execute if score @s ItemM matches 3 run function items:m/rage_axe/dur
execute if score @s ItemM matches 4 run function items:m/reapers_blade/dur
execute if score @s ItemM matches 5 run function items:m/traitor_trident/dur
execute if score @s ItemM matches 6 run function items:m/bow/dur
execute if score @s ItemM matches 7 run function items:m/dagger/dur
execute if score @s ItemM matches 8 run function items:m/hamaxe/dur
execute if score @s ItemM matches 9 run function items:m/carrot_launcher/dur
execute if score @s ItemM matches 10 run function items:m/boom_bow/dur
execute if score @s ItemM matches 11 run function items:m/slap_stick/dur
execute if score @s ItemM matches 12 run function items:m/spleefer/dur
execute if score @s ItemM matches 13 run function items:m/gauntlet/dur
execute if score @s ItemM matches 14 run function items:m/crossbow/dur
execute if score @s ItemM matches 15 run function items:m/explosive_wand/dur
execute if score @s ItemM matches 16 run function items:m/staff_of_underworld/dur
execute if score @s ItemM matches 17 run function items:m/turret/dur
execute if score @s ItemM matches 18 run function items:m/dash_dagger/dur


#execute if score @s ItemM matches 5 run 