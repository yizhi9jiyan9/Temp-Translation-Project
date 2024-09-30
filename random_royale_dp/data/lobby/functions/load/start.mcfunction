#reset everything 
scoreboard players set cur Load 0
title @a subtitle [{"text":"加载游戏场地","color":"gold"}]
data merge entity @e[type=armor_stand,tag=start,limit=1] {CustomName:'{"text":"加载地图...","color":"gray","italic":false}'}

#reset map
function lobby:load/map/block_break
function items:give/box/reset


#set everything
scoreboard players set main_gs Stats 2
scoreboard players set load_gs Stats 0
scoreboard players set reloading Stats 0

execute store result score start Load if entity @e[type=marker,tag=map]

