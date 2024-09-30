scoreboard players set @s Player 3
team join Spectator


scoreboard players reset @s LeaveSpectator
scoreboard players reset @s ICarrot_stick
clear @s carrot_on_a_stick{team:1}

execute at @s run playsound block.stone_button.click_on master @s ~ ~ ~ 0.7

execute if score main_gs Stats matches 3 run bossbar set game players
execute if score main_gs Stats matches 3 run bossbar set game players @a[scores={Player=1..}] 