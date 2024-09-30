## Will clear the item + it's data. If tag start is not input it will also remove item from player permenantly ##
scoreboard players set @s ItemMtmr 0
clear @s #items:all{main:1}

execute unless score @s ItemM matches 1.. run function items:m/unset/reset
execute if score @s ItemM matches 1 run function items:m/diamond_sword/reset
execute if score @s ItemM matches 2 run function items:m/iron_axe/reset
execute if score @s ItemM matches 3 run function items:m/rage_axe/reset
execute if score @s ItemM matches 4 run function items:m/reapers_blade/reset
execute if score @s ItemM matches 5 run function items:m/traitor_trident/reset
execute if score @s ItemM matches 6 run function items:m/bow/reset
execute if score @s ItemM matches 7 run function items:m/dagger/reset
execute if score @s ItemM matches 8 run function items:m/hamaxe/reset
execute if score @s ItemM matches 9 run function items:m/carrot_launcher/reset
execute if score @s ItemM matches 10 run function items:m/boom_bow/reset
execute if score @s ItemM matches 11 run function items:m/slap_stick/reset
execute if score @s ItemM matches 12 run function items:m/spleefer/reset
execute if score @s ItemM matches 13 run function items:m/gauntlet/reset
execute if score @s ItemM matches 14 run function items:m/crossbow/reset
execute if score @s ItemM matches 15 run function items:m/explosive_wand/reset
execute if score @s ItemM matches 16 run function items:m/staff_of_underworld/reset
execute if score @s ItemM matches 17 run function items:m/turret/reset
execute if score @s ItemM matches 18 run function items:m/dash_dagger/reset

#execute if score @s ItemM matches 5 run

execute unless entity @s[tag=start] run scoreboard players set @s ItemM 0
