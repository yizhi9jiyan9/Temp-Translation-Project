
#title display
execute store result score #store FFAScores if entity @e[tag=winner]
title @a[scores={Player=1..2}] actionbar " "

#set players
execute as @a[scores={Player=2}] run function game:gen/death/end
function game:gen/end_tmr/title
xp set @a[scores={Player=1}] 0 levels
xp set @a[scores={Player=1}] 0 points

#set winners
scoreboard players add @e[tag=winner] RoundsWon 1

#set game
scoreboard players set game_gs Stats 1
scoreboard players set end Tmr 0