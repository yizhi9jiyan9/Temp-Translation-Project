#check if the value is in the list. If it is remove it. 
scoreboard players set #num item_chest 5
function item_chest:gui/armor/clicks/remove

#if it is not in the list add it
execute if score #removed item_chest matches 0 run function item_chest:gui/armor/clicks/add

#scoreboard 
execute if score #removed item_chest matches 1 run scoreboard players set a5 ItemList 0
execute if score #removed item_chest matches 0 run scoreboard players set a5 ItemList 1