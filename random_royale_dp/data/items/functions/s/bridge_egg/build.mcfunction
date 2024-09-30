scoreboard players remove @s ItemS1 1

execute if score @s ItemS1 matches 0 unless entity @a[scores={Player=1},distance=..2] run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 cobblestone replace air
execute if score @s ItemS1 matches 0 unless entity @e[type=marker,tag=block_break,distance=..11] run summon marker ~ ~ ~ {Tags:["block_break"]}
execute if score @s ItemS1 matches 0 run kill @s

