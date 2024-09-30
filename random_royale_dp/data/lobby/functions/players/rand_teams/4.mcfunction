tag @a[sort=random,scores={Player=0,Team=0},limit=1] add v
team join Red @a[scores={Player=0},tag=v]
scoreboard players set @a[scores={Player=0},tag=v] Team 1
tag @a[scores={Player=0},tag=v] remove v

tag @a[sort=random,scores={Player=0,Team=0},limit=1] add v
team join Blue @a[scores={Player=0},tag=v]
scoreboard players set @a[scores={Player=0},tag=v] Team 2
tag @a[scores={Player=0},tag=v] remove v

tag @a[sort=random,scores={Player=0,Team=0},limit=1] add v
team join Green @a[scores={Player=0},tag=v]
scoreboard players set @a[scores={Player=0},tag=v] Team 3
tag @a[scores={Player=0},tag=v] remove v

tag @a[sort=random,scores={Player=0,Team=0},limit=1] add v
team join Yellow @a[scores={Player=0},tag=v]
scoreboard players set @a[scores={Player=0},tag=v] Team 4
tag @a[scores={Player=0},tag=v] remove v

execute if entity @a[scores={Player=0,Team=0}] run function lobby:players/rand_teams/4