gamemode spectator @a[scores={Player=1}]
execute as @a[scores={Player=1},predicate=!game:game] at @e[type=marker,tag=map,tag=start,limit=1] positioned ~ ~10 ~ run tp @s ~ ~ ~