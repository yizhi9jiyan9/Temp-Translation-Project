
#detect click
execute unless data block ~ ~ ~ Items[{Slot:11b,tag:{objd:{gui:1b}}}] unless score preset Tmr matches 1.. run function preset_load:gui/clicks/load1 
execute unless data block ~ ~ ~ Items[{Slot:12b,tag:{objd:{gui:1b}}}] unless score preset Tmr matches 1.. run function preset_load:gui/clicks/load2
execute unless data block ~ ~ ~ Items[{Slot:13b,tag:{objd:{gui:1b}}}] unless score preset Tmr matches 1.. run function preset_load:gui/clicks/load3 
execute unless data block ~ ~ ~ Items[{Slot:14b,tag:{objd:{gui:1b}}}] unless score preset Tmr matches 1.. run function preset_load:gui/clicks/load4 
execute unless data block ~ ~ ~ Items[{Slot:15b,tag:{objd:{gui:1b}}}] unless score preset Tmr matches 1.. run function preset_load:gui/clicks/load5

execute unless data block ~ ~ ~ Items[{Slot:21b,tag:{objd:{gui:1b}}}] unless score preset Tmr matches 1.. run function preset_load:gui/clicks/load6
execute unless data block ~ ~ ~ Items[{Slot:22b,tag:{objd:{gui:1b}}}] unless score preset Tmr matches 1.. run function preset_load:gui/clicks/load7
execute unless data block ~ ~ ~ Items[{Slot:23b,tag:{objd:{gui:1b}}}] unless score preset Tmr matches 1.. run function preset_load:gui/clicks/load8


#put items back in GUI
function preset_load:gui/reset_gui1


#clear / kill items
kill @e[type=minecraft:item,nbt={Item:{tag:{objd:{gui:1b}}}}]
clear @a[distance=..20] #items:all{objd:{gui:1b}} 