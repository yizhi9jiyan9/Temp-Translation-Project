
scoreboard players set @e[type=marker,tag=map] Team 0
execute unless score teamNum Settings matches 2 as @e[type=marker,tag=team] run function game:gen/spawn/team_setup/main
execute unless score buildMirror Settings matches 1 unless entity @e[type=marker,tag=map,scores={Team=1..}] as @e[type=marker,tag=team] run function game:gen/spawn/team_setup/main 

execute if score teamNum Settings matches 2 if score buildMirror Settings matches 1 run function game:gen/spawn/team_setup/mirror_main
