execute store result score #red Team if entity @a[scores={Team=1},tag=doin]
execute store result score #blue Team if entity @a[scores={Team=2},tag=doin]
execute if score #greenB Team matches 1 store result score #green Team if entity @a[scores={Team=3},tag=doin]
execute if score #yellowB Team matches 1 store result score #yellow Team if entity @a[scores={Team=4},tag=doin]


scoreboard players set #min Team 100000 
scoreboard players operation #min Team < #red Team
scoreboard players operation #min Team < #blue Team
execute if score #greenB Team matches 1 run scoreboard players operation #min Team < #green Team
execute if score #yellowB Team matches 1 run scoreboard players operation #min Team < #yellow Team


execute if score #min Team = #red Team run team join Red @s
execute if score #min Team = #red Team run scoreboard players set @s Team 1
execute if score #min Team = #blue Team run team join Blue @s
execute if score #min Team = #blue Team run scoreboard players set @s Team 2
execute if score #greenB Team matches 1 if score #min Team = #green Team run team join Green @s
execute if score #greenB Team matches 1 if score #min Team = #green Team run scoreboard players set @s Team 3
execute if score #yellowB Team matches 1 if score #min Team = #yellow Team run team join Yellow @s
execute if score #yellowB Team matches 1 if score #min Team = #yellow Team run scoreboard players set @s Team 4