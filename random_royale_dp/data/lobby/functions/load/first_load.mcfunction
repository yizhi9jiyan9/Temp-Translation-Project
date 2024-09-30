##Checking Fails!
scoreboard players set #store Tmr 0

#check if enough players (no teams)
execute if score teams SettingsLob matches 0 store result score #store Tmr if entity @a[scores={Player=0}]
execute if score admin SettingsLob matches 0 if score teams SettingsLob matches 0 unless score #store Tmr matches 2.. run tellraw @a [{"text":"[开始]","color":"gray"},{"text":" 你至少需要2名玩家才能开始","color":"red"}] 

#check if enough players (yes teams)
execute if score teams SettingsLob matches 1 store result score #store Tmr if entity @a[scores={Player=0,Team=0}]
execute if score teams SettingsLob matches 1 if entity @a[scores={Player=0,Team=1}] run scoreboard players add #store Tmr 1
execute if score teams SettingsLob matches 1 if entity @a[scores={Player=0,Team=2}] run scoreboard players add #store Tmr 1
execute if score teams SettingsLob matches 1 if entity @a[scores={Player=0,Team=3}] run scoreboard players add #store Tmr 1
execute if score teams SettingsLob matches 1 if entity @a[scores={Player=0,Team=4}] run scoreboard players add #store Tmr 1
execute if score admin SettingsLob matches 0 if score teams SettingsLob matches 1 unless score #store Tmr matches 2.. run tellraw @a [{"text":"[Start]","color":"gray"},{"text":" 你至少需要2支队伍才能开始","color":"red"}] 

#check certain gamemode fails 
execute if score #store Tmr matches 2.. if score gamemode SettingsLob matches 6 run function game:weapon/fail_check

#if there are not enough items 
execute if score #store Tmr matches 2.. if score mainLength ItemList matches ..0 run tellraw @a [{"text":"[Start]","color":"gray"},{"text":" 你至少需要启用1把武器才能开始","color":"red"}] 
execute if score mainLength ItemList matches ..0 run scoreboard players set #store Tmr 0

#do the fail
execute if score admin SettingsLob matches 0 unless score #store Tmr matches 2.. run function lobby:start/tmr_fail