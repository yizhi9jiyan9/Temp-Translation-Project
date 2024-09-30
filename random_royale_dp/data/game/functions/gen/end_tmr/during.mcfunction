#players stuff
effect give @a[scores={Player=1}] resistance 100000 9 true
effect give @a[scores={Player=1}] instant_health 1 100 true
execute as @a[scores={Player=1},predicate=!game:game] run function game:gen/spawn/main


#timer 
scoreboard players add end Tmr 1
scoreboard players operation #store Tmr = end Tmr
scoreboard players operation #store Tmr %= 10 Num
execute if score #store Tmr matches 0 run xp add @a[scores={Player=1..2}] 1 points

#fireworks 
execute if score end Tmr matches 1 as @a[tag=winner] at @s run function game:gen/end_tmr/firework
execute if score end Tmr matches 21 as @a[tag=winner] at @s run function game:gen/end_tmr/firework
execute if score end Tmr matches 41 as @a[tag=winner] at @s run function game:gen/end_tmr/firework


#end
execute if score end Tmr matches 70.. if score round Stats >= rounds Settings run function game:full_end
execute if score end Tmr matches 70.. if score main_gs Stats matches 3 unless score round Stats = rounds Settings if score buildReload Settings matches 0 run function game:end_round
execute if score end Tmr matches 70.. if score main_gs Stats matches 3 unless score round Stats = rounds Settings if score buildReload Settings matches 1 run function game:gen/end_tmr/start_reload