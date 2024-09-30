#detect actions
execute if score page item_chest matches 1 run function item_chest:gui/main/actions
execute if score page item_chest matches 2 run function item_chest:gui/second/actions
execute if score page item_chest matches 3 run function item_chest:gui/armor/actions




#clear / kill items
kill @e[type=minecraft:item,nbt={Item:{tag:{objd:{gui:1b}}}}]
clear @a[distance=..20] #items:all{objd:{gui:1b}} 