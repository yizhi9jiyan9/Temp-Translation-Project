scoreboard players set @s Player 0
function lobby:players/lobby_teams
function lobby:players/bossbar_update

title @s actionbar " "

execute if score main_gs Stats matches 3 run function lobby:players/tp

gamemode adventure @s
scoreboard players reset @s ICarrot_stick
scoreboard players reset @s TpBookTrigger

execute at @s run playsound block.stone_button.click_off master @s ~ ~ ~ 0.7

execute if score main_gs Stats matches 3 run bossbar set game players
execute if score main_gs Stats matches 3 run bossbar set game players @a[scores={Player=1..}] 