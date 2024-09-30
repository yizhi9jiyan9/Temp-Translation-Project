#reset everything 
scoreboard players set cur Load 0
title @a subtitle [{"text":"正在加载游戏场地","color":"gold"}]



#set everything
scoreboard players set main_gs Stats 2
scoreboard players set load_gs Stats 0
scoreboard players set reloading Stats 1 

execute store result score start Load if entity @e[type=marker,tag=map]
function items:give/box/reset
function items:reset_map_items
function lobby:load/map/block_break
