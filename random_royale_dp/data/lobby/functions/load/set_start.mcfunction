#reset 
scoreboard players set cur Load 0
scoreboard players set load Tmr 0



##set
#create plan 
function lobby:load/map/plan/start
#define each structure (west/east, north/south/east, north/south/east/west, ect.)
execute as @e[type=marker,tag=map] at @s run function lobby:load/map/define

execute store result score start Load if entity @e[type=marker,tag=map]
scoreboard players set load_gs Stats 1