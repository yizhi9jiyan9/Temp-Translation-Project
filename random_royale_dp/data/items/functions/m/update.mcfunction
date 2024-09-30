## updates what is shown in players inventory. Used on start and on inventory changes ##

kill @e[type=item,nbt={Item:{tag:{main:1}}}]
clear @s #items:all{main:1}

#execute unless score @s ItemM matches 1.. run
execute unless score @s ItemM matches 1.. run function items:m/unset/update
execute if score @s ItemM matches 1 run function items:m/diamond_sword/update
execute if score @s ItemM matches 2 run function items:m/iron_axe/update
execute if score @s ItemM matches 3 run function items:m/rage_axe/update
execute if score @s ItemM matches 4 run function items:m/reapers_blade/update
execute if score @s ItemM matches 5 run function items:m/traitor_trident/update
execute if score @s ItemM matches 6 run function items:m/bow/update
execute if score @s ItemM matches 7 run function items:m/dagger/update
execute if score @s ItemM matches 8 run function items:m/hamaxe/update
execute if score @s ItemM matches 9 run function items:m/carrot_launcher/update
execute if score @s ItemM matches 10 run function items:m/boom_bow/update
execute if score @s ItemM matches 11 run function items:m/slap_stick/update
execute if score @s ItemM matches 12 run function items:m/spleefer/update
execute if score @s ItemM matches 13 run function items:m/gauntlet/update
execute if score @s ItemM matches 14 run function items:m/crossbow/update
execute if score @s ItemM matches 15 run function items:m/explosive_wand/update
execute if score @s ItemM matches 16 run function items:m/staff_of_underworld/update
execute if score @s ItemM matches 17 run function items:m/turret/update
execute if score @s ItemM matches 18 run function items:m/dash_dagger/update

#execute if score @s ItemM matches 5 run 