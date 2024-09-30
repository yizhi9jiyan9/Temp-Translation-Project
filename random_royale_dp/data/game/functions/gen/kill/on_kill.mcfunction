#find hitter 
scoreboard players operation #store HitterID = @s HitterID
execute as @a[scores={Player=1..2}] if score @s HitID = #store HitterID run tag @s add v

execute if score teams Settings matches 0 unless score gamemode Settings matches 5 run function game:gen/team/alt/ffa_join
execute if score teams Settings matches 1 run function game:gen/team/alt/team_join

execute unless score gamemode Settings matches 4 if entity @a[tag=v] unless entity @s[tag=v] if score teams Settings matches 0 run function game:gen/kill/message/kill
execute unless score gamemode Settings matches 4 if entity @a[tag=v] unless entity @s[tag=v] if score teams Settings matches 1 run function game:gen/kill/message/kill_no_s
execute if entity @a[tag=v] if entity @s[tag=v] run function game:gen/kill/message/unknown
execute unless entity @a[tag=v] run function game:gen/kill/message/unknown

execute unless entity @s[tag=v] if score teams Settings matches 0 run scoreboard players add @a[tag=v] FFAScores 1
execute unless entity @s[tag=v] if score teams Settings matches 1 unless score @s Team = @a[tag=v,limit=1] Team run scoreboard players add @a[tag=v] FFAScores 1
execute if score gamemode Settings matches 5 unless entity @s[tag=v] if entity @a[tag=v] unless score @s HoardID = @a[tag=v,limit=1] HoardID run function game:zombie/die
execute if score gamemode Settings matches 6 unless entity @s[tag=v] as @a[tag=v] run function game:weapon/die
execute if score gamemode Settings matches 6 run function game:weapon/died

execute if score teams Settings matches 0 unless score gamemode Settings matches 5 run function game:gen/team/alt/ffa_leave
execute if score teams Settings matches 1 run function game:gen/team/alt/team_leave
tag @a remove v

#reset the values 
scoreboard players reset @s HitterID 
scoreboard players reset @s HitterTmr
scoreboard players reset @s StuckTmr