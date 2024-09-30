## Will clear the item + it's data. If tag start is not input it will also remove item from player permenantly ##
scoreboard players reset @s ItemStmr
clear @s #items:all{second:1}

execute unless score @s ItemS matches 1.. run function items:s/unset/reset
execute if score @s ItemS matches 1 run function items:s/golden_apple/reset
execute if score @s ItemS matches 2 run function items:s/strength_potion/reset
execute if score @s ItemS matches 3 run function items:s/weakness_potion/reset
execute if score @s ItemS matches 4 run function items:s/throwable_tnt/reset
execute if score @s ItemS matches 5 run function items:s/boom_rocket/reset
execute if score @s ItemS matches 6 run function items:s/bridge_egg/reset
execute if score @s ItemS matches 7 run function items:s/zombie_piglin/reset
execute if score @s ItemS matches 8 run function items:s/antigravity/reset
execute if score @s ItemS matches 9 run function items:s/player_swap/reset
execute if score @s ItemS matches 10 run function items:s/creeper/reset
execute if score @s ItemS matches 11 run function items:s/horse/reset
execute if score @s ItemS matches 12 run function items:s/wall/reset
execute if score @s ItemS matches 13 run function items:s/creeper_strike/reset
execute if score @s ItemS matches 14 run function items:s/pickaxe/reset
execute if score @s ItemS matches 15 run function items:s/rift/reset
execute if score @s ItemS matches 16 run function items:s/trap/reset
execute if score @s ItemS matches 17 run function items:s/healing/reset
execute if score @s ItemS matches 18 run function items:s/meteor/reset

#execute if score @s ItemS matches 5 run

execute unless entity @s[tag=start] run scoreboard players set @s ItemS 0