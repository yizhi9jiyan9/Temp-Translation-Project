scoreboard players set @s ItemStmr 1200

data modify entity @e[type=horse,tag=horse,tag=v,sort=nearest,limit=1] Owner set from entity @s UUID
tag @e[type=horse,tag=horse,tag=v,sort=nearest,limit=1] add setup
tag @e[type=horse,tag=horse,tag=v,sort=nearest,limit=1] remove v