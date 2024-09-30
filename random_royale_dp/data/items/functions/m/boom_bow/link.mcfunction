#give arrows the data
scoreboard players operation @e[type=arrow,tag=v] OuchID = @s HitID 
data merge entity @e[type=arrow,tag=v,limit=1] {pickup:0b}
tag @e[type=arrow,tag=v] add explosive_arrow 

#link armor_stand
#sets new number to arrow
scoreboard players add boom_bow ItemMtmr 1
scoreboard players operation @e[type=arrow,tag=v] ItemMtmr = boom_bow ItemMtmr

#gives corresponding armor_stand number
summon minecraft:armor_stand ~ ~ ~ {Tags:["explosive_arrow"],Invisible:1b,NoGravity:1b}
scoreboard players operation @e[tag=explosive_arrow,tag=!setup] ItemMtmr = boom_bow ItemMtmr
scoreboard players operation @e[tag=explosive_arrow,tag=!setup] OuchID = @s OuchID
tag @e[type=armor_stand,tag=explosive_arrow,tag=!setup] add setup


#reset
scoreboard players set @s ItemMtmr 20