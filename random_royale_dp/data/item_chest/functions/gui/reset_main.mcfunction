execute unless score page item_chest matches 1..3 run scoreboard players set page item_chest 1
execute if score page item_chest matches 1 run function item_chest:gui/main/reset
execute if score page item_chest matches 2 run function item_chest:gui/second/reset
execute if score page item_chest matches 3 run function item_chest:gui/armor/reset