#reset everything needed
setblock 464 140 458 minecraft:polished_blackstone_button[powered=false,facing=south] replace
data merge entity @e[type=armor_stand,tag=start,limit=1] {CustomName:'{"text":"点击以取消","color":"red","italic":false}'}

#check if enough players (no teams)
execute if score teams SettingsLob matches 0 store result score #store Tmr if entity @a[scores={Player=0}]

#check if enough players (yes teams)
execute if score teams SettingsLob matches 1 store result score #store Tmr if entity @a[scores={Player=0,Team=0}]
execute if score teams SettingsLob matches 1 if entity @a[scores={Player=0,Team=1}] run scoreboard players add #store Tmr 1
execute if score teams SettingsLob matches 1 if entity @a[scores={Player=0,Team=2}] run scoreboard players add #store Tmr 1
execute if score teams SettingsLob matches 1 if entity @a[scores={Player=0,Team=3}] run scoreboard players add #store Tmr 1
execute if score teams SettingsLob matches 1 if entity @a[scores={Player=0,Team=4}] run scoreboard players add #store Tmr 1

#start
execute if score admin SettingsLob matches 0 if score #store Tmr matches 2.. run scoreboard players set main_gs Stats 1
execute if score admin SettingsLob matches 0 if score #store Tmr matches 2.. run scoreboard players set start Tmr 100
execute if score admin SettingsLob matches 1 run scoreboard players set main_gs Stats 1
execute if score admin SettingsLob matches 1 run scoreboard players set start Tmr 100

#fail messages
execute if score admin SettingsLob matches 0 if score teams SettingsLob matches 0 unless score #store Tmr matches 2.. run tellraw @a [{"text":"[Start]","color":"gray"},{"text":" You need at least 2 players to start","color":"red"}]
execute if score admin SettingsLob matches 0 if score teams SettingsLob matches 1 unless score #store Tmr matches 2.. run tellraw @a [{"text":"[Start]","color":"gray"},{"text":" You need at least 2 teams to start","color":"red"}]
execute if score admin SettingsLob matches 0 unless score #store Tmr matches 2.. run data merge entity @e[type=armor_stand,tag=start,limit=1] {CustomName:'{"text":"点击以开始！","color":"gray","italic":false}'}


