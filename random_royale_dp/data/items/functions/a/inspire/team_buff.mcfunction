scoreboard players operation #store Team = @s Team
tag @s add v 
execute as @a[scores={Player=1},distance=..15,tag=!v] if score @s Team = #store Team run effect give @s speed 4 1 true
execute as @a[scores={Player=1},distance=..15,tag=!v] if score @s Team = #store Team run tellraw @s {"text":"[Items] You were inspired!","color":"gray"}
tag @s remove v