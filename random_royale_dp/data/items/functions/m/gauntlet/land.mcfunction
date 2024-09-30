particle block stone ~ ~ ~ 3 0 3 .1 150 force
effect clear @s minecraft:levitation

tag @s add v
effect give @a[tag=!v,scores={Player=1},distance=..3] levitation 1 9 false 
scoreboard players operation @a[scores={Player=1},distance=..3] HitterID = @s HitID
scoreboard players set @a[scores={Player=1},distance=..3] HitTmr 100
scoreboard players set @s ItemM1 0
tag @s remove v

playsound entity.generic.big_fall master @a ~ ~ ~ 3
playsound entity.generic.big_fall master @a ~ ~ ~ 3
playsound entity.generic.hurt master @a ~ ~ ~ 3