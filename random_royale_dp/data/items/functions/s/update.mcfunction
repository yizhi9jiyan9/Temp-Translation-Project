## updates what is shown in players inventory. Used on start and on inventory changes ##

kill @e[type=item,nbt={Item:{tag:{second:1}}}]
clear @s #items:all{second:1}

execute unless score @s ItemS matches 1.. unless score @s ItemStmr matches 2.. run function items:s/unset/update
execute if score @s ItemS matches 1 unless score @s ItemStmr matches 2.. run function items:s/golden_apple/update
execute if score @s ItemS matches 2 unless score @s ItemStmr matches 2.. run function items:s/strength_potion/update
execute if score @s ItemS matches 3 unless score @s ItemStmr matches 2.. run function items:s/weakness_potion/update
execute if score @s ItemS matches 4 unless score @s ItemStmr matches 2.. run function items:s/throwable_tnt/update
execute if score @s ItemS matches 5 unless score @s ItemStmr matches 2.. run function items:s/boom_rocket/update
execute if score @s ItemS matches 6 unless score @s ItemStmr matches 2.. run function items:s/bridge_egg/update
execute if score @s ItemS matches 7 unless score @s ItemStmr matches 2.. run function items:s/zombie_piglin/update
execute if score @s ItemS matches 8 unless score @s ItemStmr matches 2.. run function items:s/antigravity/update
execute if score @s ItemS matches 9 unless score @s ItemStmr matches 2.. run function items:s/player_swap/update
execute if score @s ItemS matches 10 unless score @s ItemStmr matches 2.. run function items:s/creeper/update
execute if score @s ItemS matches 11 unless score @s ItemStmr matches 2.. run function items:s/horse/update
execute if score @s ItemS matches 12 unless score @s ItemStmr matches 2.. run function items:s/wall/update
execute if score @s ItemS matches 13 unless score @s ItemStmr matches 2.. run function items:s/creeper_strike/update
execute if score @s ItemS matches 14 unless score @s ItemStmr matches 2.. run function items:s/pickaxe/update
execute if score @s ItemS matches 15 unless score @s ItemStmr matches 2.. run function items:s/rift/update
execute if score @s ItemS matches 16 unless score @s ItemStmr matches 2.. run function items:s/trap/update
execute if score @s ItemS matches 17 unless score @s ItemStmr matches 2.. run function items:s/healing/update
execute if score @s ItemS matches 18 unless score @s ItemStmr matches 2.. run function items:s/meteor/update

execute if score @s ItemStmr matches 2.. run function items:s/standin
#execute if score @s ItemM matches 5 run 