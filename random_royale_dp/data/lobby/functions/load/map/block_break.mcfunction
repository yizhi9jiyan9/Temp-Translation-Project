#reset structures than are built like egg or smth 
execute as @e[type=marker,tag=block_break] at @s run fill ~-11 ~-11 ~-11 ~11 ~11 ~11 air replace
kill @e[type=marker,tag=block_break]
