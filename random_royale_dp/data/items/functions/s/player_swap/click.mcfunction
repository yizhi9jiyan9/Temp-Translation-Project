scoreboard players set @s ItemStmr 300
function items:s/update
execute positioned ~-1.25 ~-2.25 ~-1.25 run tag @a[dx=0.5,dy=1.5,dz=0.5,scores={Player=1..},tag=!v] add tper
execute at @s run summon marker ~ ~ ~ {Tags:["player_swap_yes_lets_go"]}

#tp 
tp @s @a[tag=tper,limit=1]
tp @a[tag=tper,limit=1] @e[type=marker,tag=player_swap_yes_lets_go,limit=1]
playsound entity.enderman.teleport master @s ~ ~ ~ 100
execute as @a[tag=tper,limit=1] at @s run playsound entity.enderman.teleport master @s ~ ~ ~ 100
effect give @a[tag=tper,limit=1] levitation 1 3
#hit 
scoreboard players operation @a[tag=tper] HitterID = @s HitID
scoreboard players set @a[tag=tper] HitTmr 100

kill @e[type=marker,tag=player_swap_yes_lets_go,limit=1]
tag @a[tag=tper,limit=1] remove tper
