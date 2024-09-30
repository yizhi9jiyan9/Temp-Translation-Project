


#if there are available 3+
execute if entity @e[type=marker,scores={Team=0,NodeConnect=3..},tag=map] run function game:gen/spawn/team_setup/1


#if there are only available 1-2s
execute unless entity @e[type=marker,scores={Team=0,NodeConnect=3..},tag=map] if entity @e[type=marker,scores={Team=0},tag=map] run function game:gen/spawn/team_setup/2

#if there are none available
execute unless entity @e[type=marker,scores={Team=0},tag=map] run function game:gen/spawn/team_setup/3

