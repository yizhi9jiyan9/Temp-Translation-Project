scoreboard players remove @s DeathTmr 1 

#subtitle stuff 
scoreboard players operation #store DeathTmr = @s DeathTmr
scoreboard players operation #store DeathTmr *= -1 Num
scoreboard players operation #store DeathTmr /= 20 Num
scoreboard players operation #store DeathTmr *= -1 Num
title @s times 0 10 10
execute if score @s DeathTmr matches 2.. run title @s title " "
execute if score @s DeathTmr matches 2.. run title @s subtitle ["",{"text":"You will respawn in","color":"red"},{"text":" "},{"score":{"name":"#store","objective":"DeathTmr"},"color":"blue"},{"text":" seconds","color":"red"}]

#no leave! 
execute unless predicate game:game at @e[type=marker,tag=map,tag=start,limit=1] positioned ~ ~10 ~ run tp @s ~ ~ ~



#end
execute if score @s DeathTmr matches ..0 run function game:gen/death/end