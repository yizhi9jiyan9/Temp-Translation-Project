fill ~-1 ~-1 ~-1 ~8 ~32 ~8 air replace structure_void
clone ~ ~ ~ ~7 ~31 ~7 ~ ~-32 ~ masked move 
execute positioned ~-1 ~ ~-1 as @a[scores={Player=1},dy=23,dx=8,dz=8] at @s run tp @s ~ ~-32 ~
tp @s ~ ~-32 ~
playsound entity.enderman.teleport master @a ~ ~ ~ 5
kill @s