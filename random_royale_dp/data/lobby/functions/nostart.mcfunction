#display 
scoreboard players remove noStart Tmr 1
scoreboard players operation #store Tmr = noStart Tmr
scoreboard players operation #store Tmr *= -1 Num
scoreboard players operation #store Tmr /= 20 Num
scoreboard players operation #store Tmr *= -1 Num
data merge block 0 0 0 {front_text:{messages:['{"score":{"name":"#store","objective":"Tmr"},"color":"red"}','{"text":""}','{"text":""}','{"text":""}']}}
data modify entity @e[type=armor_stand,tag=start,limit=1] CustomName set from block 0 0 0 front_text.messages[0]

#no buton 
execute positioned 464 140 458 if block ~ ~ ~ minecraft:polished_blackstone_button[powered=true] run tellraw @p [{"text":"开始按钮冷却时间：","color":"blue"},{"score":{"name":"#store","objective":"Tmr"},"color":"red"},{"text":"秒","color":"blue"}]
execute positioned 464 140 458 if block ~ ~ ~ minecraft:polished_blackstone_button[powered=true] run setblock ~ ~ ~ minecraft:polished_blackstone_button[powered=false,facing=south]
execute positioned 464 140 458 run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 0.3

#end
execute if score noStart Tmr matches ..0 run data merge entity @e[type=armor_stand,tag=start,limit=1] {CustomName:'{"text":"点击以开始！","color":"gray","italic":false}'}
execute if score noStart Tmr matches ..0 run scoreboard players reset noStart Tmr