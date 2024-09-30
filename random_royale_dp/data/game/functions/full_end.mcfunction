#set player tag
tag @a[scores={Player=1..2}] add doin

#reset players
clear @a[tag=doin]
effect clear @a[tag=doin]
xp set @a[tag=doin] 0 points
xp set @a[tag=doin] 0 levels
gamemode adventure @a[tag=doin]
scoreboard players reset @s ICarrot_stick
execute as @a[tag=doin] run function items:reset_main
spawnpoint @a[tag=doin] 464 139 462
scoreboard players reset @s TpBookTrigger

#reset game code 
scoreboard players set game GameID -1
bossbar set game players
bossbar set game visible false
function game:gen/force_end/reset
function items:reset_map_items

#set players (for lobby)
scoreboard players set @a[tag=doin] Player 0
execute as @a[scores={Player=3}] run function lobby:players/tp
execute as @a[tag=doin] run function lobby:players/tp

#set game code (for lobby)
scoreboard players set main_gs Stats 0
scoreboard players set noStart Tmr 200
execute if score admin SettingsLob matches 1 run scoreboard players set noStart Tmr 10
function lobby:players/bossbar_update

#setting specific
execute unless score gamemode Settings matches 5 if score rounds Settings matches 2.. run function game:gen/round_lb
execute if score teams Settings matches 0 as @a[tag=doin] run function lobby:players/lobby_teams
execute if score teams Settings matches 1 as @a[tag=doin] run function lobby:players/color_teams
execute if score teamNum SettingsLob matches ..2 as @a[scores={Player=0,Team=3..}] run function lobby:players/lobby_teams
execute if score teamNum SettingsLob matches ..3 as @a[scores={Player=0,Team=4..}] run function lobby:players/lobby_teams

#gm specific 
execute if score gamemode Settings matches 0 run function game:dm_ffa/full_end
execute if score gamemode Settings matches 1 run function game:elim_ffa/full_end
execute if score gamemode Settings matches 2 run function game:dm_team/full_end
execute if score gamemode Settings matches 3 run function game:elim_team/full_end
execute if score gamemode Settings matches 4 run function game:stm/full_end
execute if score gamemode Settings matches 5 run function game:zombie/full_end
execute if score gamemode Settings matches 6 run function game:weapon/full_end

#remove player tag
tag @a[tag=doin] remove doin