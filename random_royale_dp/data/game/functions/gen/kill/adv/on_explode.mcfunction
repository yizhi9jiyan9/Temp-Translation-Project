#apply possible explode and set timer
execute if score @s PosExplodeID matches -1.. unless score @s HitID = @s PosExplodeID run scoreboard players operation @s HitterID = @s PosExplodeID
scoreboard players set @s HitTmr 140


advancement revoke @a only game:on_explode

