gamemode spectator @s
execute unless predicate game:game at @e[type=marker,tag=map,tag=start,limit=1] positioned ~ ~10 ~ run tp @s ~ ~ ~
execute unless score main_gs Stats matches 2 run title @s actionbar "Run [/trigger LeaveSpectator] to return to the lobby" 
scoreboard players enable @s LeaveSpectator
execute if score @s LeaveSpectator matches 1.. run function lobby:players/spec/leave 