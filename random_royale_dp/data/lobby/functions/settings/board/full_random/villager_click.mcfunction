scoreboard players operation #store Tmr = fullRandom Tmr
scoreboard players operation #store Tmr *= -1 Num
scoreboard players operation #store Tmr /= 20 Num
scoreboard players operation #store Tmr *= -1 Num

tellraw @s ["",{"text":"You can disable ","color":"yellow"},{"text":"Full Random","color":"dark_red"},{"text":" in ","color":"yellow"},{"score":{"name":"#store","objective":"Tmr"},"color":"yellow"},{"text":" seconds","color":"yellow"}]
execute as @s at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~

advancement revoke @s only lobby:gm/full_rand
