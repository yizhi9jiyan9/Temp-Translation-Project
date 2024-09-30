scoreboard players remove @s ItemS2 1


execute if score @s ItemS2 matches ..0 run fill ~-2 ~-1 ~-2 ~2 ~2 ~2 air replace white_stained_glass
execute if score @s ItemS2 matches ..0 run kill @s