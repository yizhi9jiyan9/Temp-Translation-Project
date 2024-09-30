##MAIN TICK FILE##

#detect if there was a change
execute store result score items item_chest if data block ~ ~ ~ Items[].tag.objd.gui

#if GUI has nothing in it
execute if score items item_chest matches 0 run function item_chest:gui/reset_main

#if at least something was taken from GUI
execute unless score items item_chest matches 27 run function item_chest:gui/actions_main