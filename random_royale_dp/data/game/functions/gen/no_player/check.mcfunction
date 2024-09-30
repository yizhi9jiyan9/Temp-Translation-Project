#check if enough players (no teams)
scoreboard players set #store Tmr 0
execute if score teams Settings matches 0 store result score #store Tmr if entity @a[scores={Player=1..2}]

#check if enough players (yes teams)
execute if score teams Settings matches 1 if entity @a[scores={Player=1..2,Team=1}] run scoreboard players add #store Tmr 1
execute if score teams Settings matches 1 if entity @a[scores={Player=1..2,Team=2}] run scoreboard players add #store Tmr 1
execute if score teams Settings matches 1 if entity @a[scores={Player=1..2,Team=3}] run scoreboard players add #store Tmr 1
execute if score teams Settings matches 1 if entity @a[scores={Player=1..2,Team=4}] run scoreboard players add #store Tmr 1

#fail success
execute if score admin SettingsLob matches 0 if score #store Tmr matches 2.. if score noPlayerCancel Tmr matches ..199 run title @a[scores={Player=1..2}] subtitle {"text":" ","color":"green"}
execute if score admin SettingsLob matches 0 if score #store Tmr matches 2.. if score noPlayerCancel Tmr matches ..199 run title @a[scores={Player=1..2}] title {"text":"Game Resuming","color":"green"}
execute if score admin SettingsLob matches 0 if score #store Tmr matches 2.. run scoreboard players set noPlayerCancel Tmr 200
execute if score admin SettingsLob matches 0 unless score #store Tmr matches 2.. run function game:gen/no_player/main
