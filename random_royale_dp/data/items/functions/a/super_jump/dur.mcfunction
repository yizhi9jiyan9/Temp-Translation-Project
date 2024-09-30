

execute if score @s IShift matches 1.. run scoreboard players add @s ItemA1 1
execute if score @s IShift matches 1.. if score @s ItemA1 matches 0..5 run effect give @s jump_boost 1 0 true
execute if score @s IShift matches 1.. if score @s ItemA1 matches 6..10 run effect give @s jump_boost 1 1 true
execute if score @s IShift matches 1.. if score @s ItemA1 matches 11..15 run effect give @s jump_boost 1 2 true
execute if score @s IShift matches 1.. if score @s ItemA1 matches 16..20 run effect give @s jump_boost 1 3 true
execute if score @s IShift matches 1.. if score @s ItemA1 matches 21..25 run effect give @s jump_boost 1 4 true
execute if score @s IShift matches 1.. if score @s ItemA1 matches 26..30 run effect give @s jump_boost 1 5 true

scoreboard players reset @s IShift

execute unless predicate items:a/super_jump run scoreboard players reset @s ItemA1 
execute unless predicate items:a/super_jump if score game_gs Stats matches 0 run xp set @s 0 points
execute if entity @s[nbt={OnGround:0b}] run scoreboard players reset @s ItemA1 
execute if entity @s[nbt={OnGround:0b}] if score game_gs Stats matches 0 run xp set @s 0 points
execute if entity @s[nbt={OnGround:0b}] run effect clear @s jump_boost

execute if score game_gs Stats matches 0 if score @s ItemA1 matches 0..19 run xp set @s 1 points
execute if score game_gs Stats matches 0 if score @s ItemA1 matches 6..10 run xp set @s 2 points
execute if score game_gs Stats matches 0 if score @s ItemA1 matches 11..15 run xp set @s 3 points
execute if score game_gs Stats matches 0 if score @s ItemA1 matches 16..20 run xp set @s 4 points
execute if score game_gs Stats matches 0 if score @s ItemA1 matches 21..25 run xp set @s 5 points
execute if score game_gs Stats matches 0 if score @s ItemA1 matches 26..30 run xp set @s 6 points


