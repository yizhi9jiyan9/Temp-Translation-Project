scoreboard players remove @s SafetyTmr 1 

execute if score @s Deaths matches 1.. run function game:gen/spawn/main
execute if score @s Deaths matches 1.. run scoreboard players reset @s Deaths