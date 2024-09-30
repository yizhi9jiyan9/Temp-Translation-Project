particle lava ~ ~1 ~ 0 0 0 0.0001 2 force @a

execute as @s[nbt={OnGround:0b,NoAI:1b}] run data merge entity @s {NoAI:0b}
execute as @s[nbt={OnGround:1b}] run data merge entity @s {NoAI:1b}

scoreboard players remove @s ItemStmr 1

scoreboard players operation sec ItemStmr = @s ItemStmr
scoreboard players operation sec ItemStmr /= 20 Num

scoreboard players operation tick ItemStmr = @s ItemStmr
scoreboard players operation tick ItemStmr %= 20 Num
scoreboard players operation tick ItemStmr *= 5 Num

execute unless score sec ItemStmr matches 0 if score tick ItemStmr matches 0 run playsound minecraft:block.note_block.banjo master @a ~ ~ ~ 10

execute if score @s ItemStmr matches 70.. if score tick ItemStmr matches 11.. run data merge block 0 0 0 {Text1:'["",{"score":{"name":"sec","objective":"ItemStmr"},"bold":true,"color":"green"},{"text":".","bold":true,"color":"green"},{"score":{"name":"tick","objective":"ItemStmr"},"bold":true,"color":"green"}]'}
execute if score @s ItemStmr matches 70.. if score tick ItemStmr matches 0..9 run data merge block 0 0 0 {Text1:'["",{"score":{"name":"sec","objective":"ItemStmr"},"bold":true,"color":"green"},{"text":".0","bold":true,"color":"green"},{"score":{"name":"tick","objective":"ItemStmr"},"bold":true,"color":"green"}]'}
execute if score @s ItemStmr matches 40..69 if score tick ItemStmr matches 11.. run data merge block 0 0 0 {Text1:'["",{"score":{"name":"sec","objective":"ItemStmr"},"bold":true,"color":"yellow"},{"text":".","bold":true,"color":"yellow"},{"score":{"name":"tick","objective":"ItemStmr"},"bold":true,"color":"yellow"}]'}
execute if score @s ItemStmr matches 40..69 if score tick ItemStmr matches 0..9 run data merge block 0 0 0 {Text1:'["",{"score":{"name":"sec","objective":"ItemStmr"},"bold":true,"color":"yellow"},{"text":".0","bold":true,"color":"yellow"},{"score":{"name":"tick","objective":"ItemStmr"},"bold":true,"color":"yellow"}]'}
execute if score @s ItemStmr matches 70 run data merge entity @s {ignited:1b,Fuse:400}
execute if score @s ItemStmr matches 70 run playsound entity.creeper.primed master @a ~ ~ ~ 10
execute if score @s ItemStmr matches ..39 if score tick ItemStmr matches 11.. run data merge block 0 0 0 {Text1:'["",{"score":{"name":"sec","objective":"ItemStmr"},"bold":true,"color":"dark_red"},{"text":".","bold":true,"color":"dark_red"},{"score":{"name":"tick","objective":"ItemStmr"},"bold":true,"color":"dark_red"}]'}
execute if score @s ItemStmr matches ..39 if score tick ItemStmr matches 0..9 run data merge block 0 0 0 {Text1:'["",{"score":{"name":"sec","objective":"ItemStmr"},"bold":true,"color":"dark_red"},{"text":".0","bold":true,"color":"dark_red"},{"score":{"name":"tick","objective":"ItemStmr"},"bold":true,"color":"dark_red"}]'}

data modify entity @s CustomName set from block 0 0 0 Text1

execute if score @s ItemStmr matches 0 run function items:s/creeper/deto