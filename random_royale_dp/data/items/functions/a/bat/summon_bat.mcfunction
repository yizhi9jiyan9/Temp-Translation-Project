summon bat ~ ~ ~ {PersistenceRequired:1b,NoAI:1b,Tags:["bat_armor","v"],Invulnerable:1b}
scoreboard players operation @e[type=bat,tag=bat_armor,tag=v] ItemA1 = @s ID
tag @e[type=bat,tag=bat_armor,tag=v] add setup
tag @e[type=bat,tag=bat_armor,tag=v] remove v