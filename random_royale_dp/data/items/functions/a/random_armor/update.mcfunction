item replace entity @s armor.head with player_head{SkullOwner:{Id:[I;-263118006,-1942141483,-1904681102,-1647256948],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjcwNWZkOTRhMGM0MzE5MjdmYjRlNjM5YjBmY2ZiNDk3MTdlNDEyMjg1YTAyYjQzOWUwMTEyZGEyMmIyZTJlYyJ9fX0="}]}},armor:1,Unbreakable:1b,HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{Name:'{"text":"???","color":"gray","italic":false}'}}

execute if score @s ItemA1 matches 0 run item replace entity @s armor.chest with leather_chestplate{armor:1,Unbreakable:1b,HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{color:1,Name:'{"text":"???","color":"gray","italic":false}'}}
execute if score @s ItemA1 matches 1 run item replace entity @s armor.chest with golden_chestplate{armor:1,Unbreakable:1b,HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{color:1,Name:'{"text":"???","color":"gray","italic":false}'}}
execute if score @s ItemA1 matches 2 run item replace entity @s armor.chest with iron_chestplate{armor:1,Unbreakable:1b,HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{color:1,Name:'{"text":"???","color":"gray","italic":false}'}}
execute if score @s ItemA1 matches 3 run item replace entity @s armor.chest with diamond_chestplate{armor:1,Unbreakable:1b,HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{color:1,Name:'{"text":"???","color":"gray","italic":false}'}}

execute if score @s ItemA2 matches 0 run item replace entity @s armor.legs with leather_leggings{armor:1,Unbreakable:1b,HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{color:1,Name:'{"text":"???","color":"gray","italic":false}'}}
execute if score @s ItemA2 matches 1 run item replace entity @s armor.legs with golden_leggings{armor:1,Unbreakable:1b,HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{color:1,Name:'{"text":"???","color":"gray","italic":false}'}}
execute if score @s ItemA2 matches 2 run item replace entity @s armor.legs with iron_leggings{armor:1,Unbreakable:1b,HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{color:1,Name:'{"text":"???","color":"gray","italic":false}'}}
execute if score @s ItemA2 matches 3 run item replace entity @s armor.legs with diamond_leggings{armor:1,Unbreakable:1b,HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{color:1,Name:'{"text":"???","color":"gray","italic":false}'}}

execute if score @s ItemA3 matches 0 run item replace entity @s armor.feet with leather_boots{armor:1,Unbreakable:1b,HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"depth_strider",lvl:3s}],display:{color:1,Name:'{"text":"???","color":"gray","italic":false}'}}
execute if score @s ItemA3 matches 1 run item replace entity @s armor.feet with golden_boots{armor:1,Unbreakable:1b,HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"depth_strider",lvl:3s}],display:{color:1,Name:'{"text":"???","color":"gray","italic":false}'}}
execute if score @s ItemA3 matches 2 run item replace entity @s armor.feet with iron_boots{armor:1,Unbreakable:1b,HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"depth_strider",lvl:3s}],display:{color:1,Name:'{"text":"???","color":"gray","italic":false}'}}
execute if score @s ItemA3 matches 3 run item replace entity @s armor.feet with diamond_boots{armor:1,Unbreakable:1b,HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"depth_strider",lvl:3s}],display:{color:1,Name:'{"text":"???","color":"gray","italic":false}'}}

function items:a/noability