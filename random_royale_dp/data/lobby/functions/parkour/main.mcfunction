#entering parkour
execute unless score @s Parkour matches 1.. if block ~ ~ ~ light_weighted_pressure_plate positioned 516.50 131.00 463.5 if entity @s[distance=..2] run function lobby:parkour/start

#scores
execute if score @s Parkour matches 1.. run function lobby:parkour/score

#items
execute if score @s Parkour matches 1.. run function lobby:parkour/items
kill @e[type=item,nbt={Item:{tag:{parkour:1}}}]

#detecting location
execute if score @s Parkour matches 1.. run function lobby:parkour/detect_location



#failing parkour
execute if score @s Parkour matches 1.. if block ~ ~ ~ structure_void run function lobby:parkour/fail
execute if score @s Parkour matches 1.. unless predicate lobby:parkour run function lobby:parkour/fail 

#completing parkour
execute if score @s Parkour matches 1.. if block ~ ~-1 ~ gold_block positioned 522.5 154.00 466.50 if entity @s[distance=..2] run function lobby:parkour/end
