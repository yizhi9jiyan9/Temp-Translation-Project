
#clickable lines 1
execute unless data block ~ ~ ~ Items[{Slot:0b,tag:{objd:{gui:1b}}}] run function item_chest:gui/second/clicks/r1/1
execute unless data block ~ ~ ~ Items[{Slot:1b,tag:{objd:{gui:1b}}}] run function item_chest:gui/second/clicks/r1/2
execute unless data block ~ ~ ~ Items[{Slot:2b,tag:{objd:{gui:1b}}}] run function item_chest:gui/second/clicks/r1/3 
execute unless data block ~ ~ ~ Items[{Slot:3b,tag:{objd:{gui:1b}}}] run function item_chest:gui/second/clicks/r1/4 
execute unless data block ~ ~ ~ Items[{Slot:4b,tag:{objd:{gui:1b}}}] run function item_chest:gui/second/clicks/r1/5
execute unless data block ~ ~ ~ Items[{Slot:5b,tag:{objd:{gui:1b}}}] run function item_chest:gui/second/clicks/r1/6
execute unless data block ~ ~ ~ Items[{Slot:6b,tag:{objd:{gui:1b}}}] run function item_chest:gui/second/clicks/r1/7 
execute unless data block ~ ~ ~ Items[{Slot:7b,tag:{objd:{gui:1b}}}] run function item_chest:gui/second/clicks/r1/8 
execute unless data block ~ ~ ~ Items[{Slot:8b,tag:{objd:{gui:1b}}}] run function item_chest:gui/second/clicks/r1/9

#clickable lines 2
execute unless data block ~ ~ ~ Items[{Slot:9b,tag:{objd:{gui:1b}}}] run function item_chest:gui/second/clicks/r2/1
execute unless data block ~ ~ ~ Items[{Slot:10b,tag:{objd:{gui:1b}}}] run function item_chest:gui/second/clicks/r2/2
execute unless data block ~ ~ ~ Items[{Slot:11b,tag:{objd:{gui:1b}}}] run function item_chest:gui/second/clicks/r2/3 
execute unless data block ~ ~ ~ Items[{Slot:12b,tag:{objd:{gui:1b}}}] run function item_chest:gui/second/clicks/r2/4 
execute unless data block ~ ~ ~ Items[{Slot:13b,tag:{objd:{gui:1b}}}] run function item_chest:gui/second/clicks/r2/5
execute unless data block ~ ~ ~ Items[{Slot:14b,tag:{objd:{gui:1b}}}] run function item_chest:gui/second/clicks/r2/6
execute unless data block ~ ~ ~ Items[{Slot:15b,tag:{objd:{gui:1b}}}] run function item_chest:gui/second/clicks/r2/7 
execute unless data block ~ ~ ~ Items[{Slot:16b,tag:{objd:{gui:1b}}}] run function item_chest:gui/second/clicks/r2/8 
execute unless data block ~ ~ ~ Items[{Slot:17b,tag:{objd:{gui:1b}}}] run function item_chest:gui/second/clicks/r2/9

#clickable lines 3
execute unless data block ~ ~ ~ Items[{Slot:18b,tag:{objd:{gui:1b}}}] run function item_chest:gui/second/clicks/tabs/enable_all
execute unless data block ~ ~ ~ Items[{Slot:21b,tag:{objd:{gui:1b}}}] run function item_chest:gui/second/clicks/tabs/main
execute unless data block ~ ~ ~ Items[{Slot:22b,tag:{objd:{gui:1b}}}] run function item_chest:gui/second/clicks/tabs/second
execute unless data block ~ ~ ~ Items[{Slot:23b,tag:{objd:{gui:1b}}}] run function item_chest:gui/second/clicks/tabs/armor
execute unless data block ~ ~ ~ Items[{Slot:26b,tag:{objd:{gui:1b}}}] run function item_chest:gui/second/clicks/tabs/disable_all

#put items back in GUI
function item_chest:gui/reset_main
