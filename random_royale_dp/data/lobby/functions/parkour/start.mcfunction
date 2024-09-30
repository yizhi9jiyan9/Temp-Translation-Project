scoreboard players set @s Parkour 1
scoreboard players set @s ParkourLoc 0
effect give @s invisibility 10000 0 true

clear @s
item replace entity @s armor.feet with leather_boots{display:{Name:'{"text":"Moon Shoes","color":"gold","italic":false}',color:16759552},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1

#tellraw @s [{"text":"[Parkour] ","color":"dark_aqua"},{"text":"Parkour started!","color":"aqua"}]
execute at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1 1.781797