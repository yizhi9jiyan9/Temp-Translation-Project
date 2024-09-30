scoreboard players operation #store ID = @s ID 
execute as @e[type=bat,tag=bat_armor,tag=setup] if score @s ItemA1 = #store ID run tp @s ~ ~-300 ~
execute as @e[type=bat,tag=bat_armor,tag=setup] if score @s ItemA1 = #store ID run kill @s
function items:a/update