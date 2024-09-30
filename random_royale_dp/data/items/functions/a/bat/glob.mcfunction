scoreboard players operation #store ID = @s ItemA1

execute as @a[scores={Player=1,ItemA=13}] if score @s ID = #store ID run scoreboard players set #store ID -1 
execute unless score #store ID matches -1 run tp @s ~ ~-400 ~
execute unless score #store ID matches -1 run kill @s