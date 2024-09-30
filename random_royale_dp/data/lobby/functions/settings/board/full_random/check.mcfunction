execute if score main_gs Stats matches 0 unless score gamemode SettingsLob matches -1 run function lobby:settings/board/full_random/start
execute unless score main_gs Stats matches 0 positioned 458 140 458 run tellraw @s [{"text":"[Settings]","color":"gray"},{"text":"In order to activate full random, there must not be a game running","color":"red"}]
