scoreboard objectives add item_chest dummy

#if there is no data!
execute unless data storage item main run function item_chest:gui/main/setup
execute unless data storage item second run function item_chest:gui/second/setup
execute unless data storage item armor run function item_chest:gui/armor/setup

execute unless score page item_chest matches 1.. run scoreboard players set page item_chest 1
function item_chest:gui/reset_main


