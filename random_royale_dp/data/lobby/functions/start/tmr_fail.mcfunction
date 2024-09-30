#reset 
setblock 464 140 458 minecraft:polished_blackstone_button[powered=false,facing=south] replace
data merge entity @e[type=armor_stand,tag=start,limit=1] {CustomName:'{"text":"点击以开始！","color":"gray","italic":false}'}

#set
scoreboard players set main_gs Stats 0
title @a times 0 50 20
title @a title " "
title @a subtitle ["",{"text":"游戏取消","color":"red"}]
execute positioned 464.5 140.5 458.5 run playsound entity.villager.no master @a ~ ~ ~ .8 1.4


#if fail NOT from button press
