
execute if score scoreToWin SettingsLob matches 5 if score mainLength ItemList matches ..14 run scoreboard players set #store Tmr 1
execute if score scoreToWin SettingsLob matches 4 if score mainLength ItemList matches ..11 run scoreboard players set #store Tmr 1
execute if score scoreToWin SettingsLob matches 3 if score mainLength ItemList matches ..7 run scoreboard players set #store Tmr 1
execute if score scoreToWin SettingsLob matches 2 if score mainLength ItemList matches ..4 run scoreboard players set #store Tmr 1
execute if score scoreToWin SettingsLob matches 1 if score mainLength ItemList matches ..2 run scoreboard players set #store Tmr 1

execute if score #store Tmr matches 1 run function game:weapon/fail