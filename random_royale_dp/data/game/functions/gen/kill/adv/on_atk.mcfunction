#happens second
execute if entity @a[tag=defend,scores={Player=1..2}] run scoreboard players operation @a[tag=defend] HitterID = @s HitID 
execute if entity @a[tag=defend,scores={Player=1..2}] run scoreboard players set @a[tag=defend] HitTmr 130

#resets both players stuck

tag @a remove defend
advancement revoke @a only game:on_atk

