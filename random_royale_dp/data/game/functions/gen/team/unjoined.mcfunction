#put players onto teams
execute store result score #num Team if entity @a[tag=doin]

scoreboard players set #greenB Team 0
scoreboard players set #yellowB Team 0
execute if score teamNum Settings matches 3.. if score #num Team matches 5..6 run scoreboard players set #greenB Team 1
execute if score teamNum Settings matches 4.. if score #num Team matches 7.. run scoreboard players set #yellowB Team 1

execute if entity @a[scores={Team=3},tag=doin] run scoreboard players set #greenB Team 1
execute if entity @a[scores={Team=4},tag=doin] run scoreboard players set #yellowB Team 1
execute as @a[scores={Team=0},tag=doin] run function game:gen/team/unjoined_join