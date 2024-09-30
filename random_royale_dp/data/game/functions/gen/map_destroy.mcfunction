#after 2.5 minutes start exploding
scoreboard players add game Tmr 1 


execute if score game Tmr matches 3000 run scoreboard players set game Tmr 10000


execute if score game Tmr matches 10000 store result score #map_number Tmr if entity @e[type=marker,tag=map,tag=!exploded]
execute if score game Tmr matches 10000 if score #map_number Tmr matches 2.. run function items:s/creeper_strike/start_strike_no_player
execute if score game Tmr matches 10000 if score #map_number Tmr matches 2.. run tellraw @a[scores={Player=1..}] [{"text":"A segment of the map is being destroyed...","color":"red"}]
execute if score game Tmr matches 10000.. run scoreboard players set game Tmr 9400