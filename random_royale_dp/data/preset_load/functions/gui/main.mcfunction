##MAIN TICK FILE##
scoreboard players remove preset Tmr 1

#detect if there was a change
execute store result score items objd_gui_count if data block ~ ~ ~ Items[].tag.objd.gui

#if GUI has nothing in it
execute if score items objd_gui_count matches 0 run function preset_load:gui/reset_gui1

#if at least something was taken from GUI
execute unless score items objd_gui_count matches 27 run function preset_load:gui/actions_main