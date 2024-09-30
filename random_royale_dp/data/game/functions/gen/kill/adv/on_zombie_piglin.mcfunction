#apply possible explode and set timer
execute if entity @e[type=zombified_piglin,scores={HitID=1..},tag=setup,sort=nearest,limit=1] at @s run scoreboard players operation @s HitterID = @e[type=zombified_piglin,scores={HitID=1..},tag=setup,sort=nearest,limit=1] HitID
scoreboard players set @s HitTmr 100


advancement revoke @a only game:on_zombie_piglin


