scoreboard players set @s ItemStmr 300
function items:s/update


#place wall 
execute if score @s ItemS2 matches 2 run fill ~ ~ ~-2 ~ ~2 ~2 cobblestone
execute if score @s ItemS2 matches 1 run fill ~-2 ~ ~ ~2 ~2 ~ cobblestone
execute unless entity @e[type=marker,tag=block_break,distance=..13] run summon marker ~ ~ ~ {Tags:["block_break"]}
playsound block.stone.place block @a ~ ~ ~ 1
playsound block.stone.place block @a ~ ~ ~ 1
playsound block.stone.place block @a ~ ~ ~ 1