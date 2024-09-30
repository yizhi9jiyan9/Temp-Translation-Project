scoreboard players set @a[scores={Player=1..2,EndGame=1}] EndGame 2

#text
tellraw @a[scores={Player=1..}] "\n"
execute if score #enders EndGame matches 1 run tellraw @a[scores={Player=1..}] ["",{"text":"[结束游戏]","color":"dark_red"},{"text":" 游戏结束投票已启动","color":"red"},{"text":" (1/","color":"yellow"},{"score":{"name":"#players","objective":"EndGame"},"color":"yellow"},{"text":")","color":"yellow"}]
execute if score #enders EndGame matches 2.. run tellraw @a[scores={Player=1..}] ["",{"text":"[结束游戏]","color":"dark_red"},{"text":" 游戏结束投票更新","color":"red"},{"text":" (","color":"yellow"},{"score":{"name":"#enders","objective":"EndGame"},"color":"yellow"},{"text":"/","color":"yellow"},{"score":{"name":"#players","objective":"EndGame"},"color":"yellow"},{"text":")","color":"yellow"}]
execute as @a[scores={Player=1..2}] unless score @s EndGame matches 1.. run tellraw @s ["",{"text":"使用指令（或点击此指令） ","color":"gray"},{"text":"/trigger EndGame","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger EndGame"},"hoverEvent":{"action":"show_text","contents":"/trigger EndGame"}},{"text":"来投票。","color":"gray"}]
tellraw @a[scores={Player=1..}] "\n"
