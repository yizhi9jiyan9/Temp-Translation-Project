#just displaying it tbh :)
scoreboard players remove start Tmr 1 

scoreboard players operation #store Tmr = start Tmr
scoreboard players operation #store Tmr *= -1 Num
scoreboard players operation #store Tmr /= 20 Num
scoreboard players operation #store Tmr *= -1 Num

title @a times 0 10 10
title @a title " "
title @a subtitle ["",{"text":"游戏将于","color":"blue"},{"text":" "},{"score":{"name":"#store","objective":"Tmr"},"color":"red"},{"text":" 秒后开始","color":"blue"}]

#sounds 
execute positioned 464.5 140.5 458.5 if score start Tmr matches 80 run playsound block.note_block.chime master @a ~ ~ ~ 1.5 1
execute positioned 464.5 140.5 458.5 if score start Tmr matches 60 run playsound block.note_block.chime master @a ~ ~ ~ 1.5 1
execute positioned 464.5 140.5 458.5 if score start Tmr matches 40 run playsound block.note_block.chime master @a ~ ~ ~ 1.5 1
execute positioned 464.5 140.5 458.5 if score start Tmr matches 20 run playsound block.note_block.chime master @a ~ ~ ~ 1.5 1
execute positioned 464.5 140.5 458.5 if score start Tmr matches 0 run playsound block.note_block.chime master @a ~ ~ ~ 1.5 1.4


##Checking Fails!
scoreboard players set #store Tmr 0

#check if enough players (no teams)
execute if score teams SettingsLob matches 0 store result score #store Tmr if entity @a[scores={Player=0}]
execute if score admin SettingsLob matches 0 if score teams SettingsLob matches 0 unless score #store Tmr matches 2.. run tellraw @a [{"text":"[Start]","color":"gray"},{"text":" You need at least 2 players to start","color":"red"}] 

#check if enough players (yes teams)
execute if score teams SettingsLob matches 1 store result score #store Tmr if entity @a[scores={Player=0,Team=0}]
execute if score teams SettingsLob matches 1 if entity @a[scores={Player=0,Team=1}] run scoreboard players add #store Tmr 1
execute if score teams SettingsLob matches 1 if entity @a[scores={Player=0,Team=2}] run scoreboard players add #store Tmr 1
execute if score teams SettingsLob matches 1 if entity @a[scores={Player=0,Team=3}] run scoreboard players add #store Tmr 1
execute if score teams SettingsLob matches 1 if entity @a[scores={Player=0,Team=4}] run scoreboard players add #store Tmr 1
execute if score admin SettingsLob matches 0 if score teams SettingsLob matches 1 unless score #store Tmr matches 2.. run tellraw @a [{"text":"[Start]","color":"gray"},{"text":" You need at least 2 teams to start","color":"red"}] 

#check certain gamemode fails 
execute if score #store Tmr matches 2.. if score gamemode SettingsLob matches 6 run function game:weapon/fail_check

#if there are not enough items 
execute if score #store Tmr matches 2.. if score mainLength ItemList matches ..0 run tellraw @a [{"text":"[Start]","color":"gray"},{"text":" You need at least 1 mainhand weapon enabled to start","color":"red"}] 
execute if score mainLength ItemList matches ..0 run scoreboard players set #store Tmr 0

#do the fail
execute if score admin SettingsLob matches 0 unless score #store Tmr matches 2.. run function lobby:start/tmr_fail

#basic possible ends 
execute if score main_gs Stats matches 1 if block 464 140 458 minecraft:polished_blackstone_button[powered=true] run function lobby:start/tmr_fail
execute if score main_gs Stats matches 1 if score start Tmr matches ..0 run function lobby:load/start
