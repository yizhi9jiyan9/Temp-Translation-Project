scoreboard players set @s ItemStmr 300
function items:s/update


#summon markers
execute unless entity @e[type=marker,tag=block_break,distance=..13] run summon marker ~ ~ ~ {Tags:["block_break"]}

summon marker ~ ~ ~ {Tags:["meteor"]}
scoreboard players set @e[type=marker,tag=meteor,tag=!setup] ItemS1 60 
scoreboard players operation @e[type=marker,tag=meteor,tag=!setup] OuchID = @s HitID
tag @e[type=marker,tag=meteor,tag=!setup] add setup 
 

