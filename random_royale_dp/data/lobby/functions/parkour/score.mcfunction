scoreboard players add @s Parkour 1


#find score 
scoreboard players operation #min Parkour = @s Parkour
scoreboard players operation #min Parkour /= 1200 Num

scoreboard players operation #sec Parkour = @s Parkour
scoreboard players operation #sec Parkour %= 1200 Num
scoreboard players operation #sec Parkour /= 20 Num

scoreboard players operation #tick Parkour = @s Parkour
scoreboard players operation #tick Parkour %= 1200 Num
scoreboard players operation #tick Parkour %= 20 Num
scoreboard players operation #tick Parkour *= 5 Num


#display
execute if score #sec Parkour matches 10.. if score #tick Parkour matches 10.. run title @s actionbar [{"text":"Time:","color":"dark_aqua"},{"text":" ","color":"aqua"},{"score":{"name":"#min","objective":"Parkour"},"color":"aqua"},{"text":":","color":"aqua"},{"score":{"name":"#sec","objective":"Parkour"},"color":"aqua"},{"text":".","color":"aqua"},{"score":{"name":"#tick","objective":"Parkour"},"color":"aqua"}]
execute unless score #sec Parkour matches 10.. if score #tick Parkour matches 10.. run title @s actionbar [{"text":"Time:","color":"dark_aqua"},{"text":" ","color":"aqua"},{"score":{"name":"#min","objective":"Parkour"},"color":"aqua"},{"text":":0","color":"aqua"},{"score":{"name":"#sec","objective":"Parkour"},"color":"aqua"},{"text":".","color":"aqua"},{"score":{"name":"#tick","objective":"Parkour"},"color":"aqua"}]
execute if score #sec Parkour matches 10.. unless score #tick Parkour matches 10.. run title @s actionbar [{"text":"Time:","color":"dark_aqua"},{"text":" ","color":"aqua"},{"score":{"name":"#min","objective":"Parkour"},"color":"aqua"},{"text":":","color":"aqua"},{"score":{"name":"#sec","objective":"Parkour"},"color":"aqua"},{"text":".0","color":"aqua"},{"score":{"name":"#tick","objective":"Parkour"},"color":"aqua"}]
execute unless score #sec Parkour matches 10.. unless score #tick Parkour matches 10.. run title @s actionbar [{"text":"Time:","color":"dark_aqua"},{"text":" ","color":"aqua"},{"score":{"name":"#min","objective":"Parkour"},"color":"aqua"},{"text":":0","color":"aqua"},{"score":{"name":"#sec","objective":"Parkour"},"color":"aqua"},{"text":".0","color":"aqua"},{"score":{"name":"#tick","objective":"Parkour"},"color":"aqua"}]

