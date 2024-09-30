scoreboard objectives add objd_gui_count dummy

execute unless score page objd_gui_count matches 1.. run scoreboard players set page objd_gui_count 1
execute if score page objd_gui_count matches 1 positioned 463 140 464 run function preset_load:gui/reset_gui1