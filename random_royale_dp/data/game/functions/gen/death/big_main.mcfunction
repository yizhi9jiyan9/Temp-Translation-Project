execute if score deathType Settings matches 0 as @a[scores={Player=1,Deaths=1..}] run function game:gen/death/start
execute if score deathType Settings matches 0 as @a[scores={Player=2}] run function game:gen/death/main

execute if score deathType Settings matches 1 if score livesEnabled Settings matches 0 as @a[scores={Player=1,Deaths=1..}] run function game:gen/death/start_fulldeath
execute if score deathType Settings matches 1 if score livesEnabled Settings matches 0 as @a[scores={Player=2}] run function game:gen/death/main_fulldeath

execute if score deathType Settings matches 1 if score livesEnabled Settings matches 1 as @a[scores={Player=1,Deaths=1..,Lives=2..}] run function game:gen/death/start
execute if score deathType Settings matches 1 if score livesEnabled Settings matches 1 as @a[scores={Player=1,Deaths=1..,Lives=..1}] run function game:gen/death/start_fulldeath
execute if score deathType Settings matches 1 if score livesEnabled Settings matches 1 as @a[scores={Player=2,Lives=1..}] run function game:gen/death/main
execute if score deathType Settings matches 1 if score livesEnabled Settings matches 1 as @a[scores={Player=2,Lives=..0}] run function game:gen/death/main_fulldeath