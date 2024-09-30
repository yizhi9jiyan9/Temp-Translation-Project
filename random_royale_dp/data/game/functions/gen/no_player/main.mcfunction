scoreboard players remove noPlayerCancel Tmr 1

#timer / 
scoreboard players operation #store Tmr = noPlayerCancel Tmr
scoreboard players operation #store Tmr *= -1 Num
scoreboard players operation #store Tmr /= 20 Num
scoreboard players operation #store Tmr *= -1 Num


#title
execute if score noPlayerCancel Tmr matches 199 run title @a times 0 40 10
title @a[scores={Player=1..2}] subtitle ["",{"text":"玩家不足","color":"yellow"},{"text":"(","color":"red"},{"score":{"name":"#store","objective":"Tmr"},"color":"red"},{"text":"s)","color":"red"}]
title @a[scores={Player=1..2}] title {"text":"游戏取消","color":"red"}

#end
execute if score noPlayerCancel Tmr matches ..0 run title @a[scores={Player=1..2}] title {"text":"游戏取消","color":"red"}
execute if score noPlayerCancel Tmr matches ..0 run function game:full_end