

#end
tellraw @a[scores={Player=1..}] "\n"
tellraw @a[scores={Player=1..}] ["",{"text":"[结束游戏]","color":"dark_red"},{"text":" 投票成功，游戏结束。","color":"red"},{"text":" (","color":"yellow"},{"score":{"name":"#enders","objective":"EndGame"},"color":"yellow"},{"text":"/","color":"yellow"},{"score":{"name":"#players","objective":"EndGame"},"color":"yellow"},{"text":")","color":"yellow"}]
tellraw @a[scores={Player=1..}] "\n"
function game:full_end
