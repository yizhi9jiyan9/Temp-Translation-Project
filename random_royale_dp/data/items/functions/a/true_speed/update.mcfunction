item replace entity @s armor.head with iron_helmet{display:{Name:'{"text":"True Speed Cap","color":"dark_red","italic":false}',color:0},HideFlags:127,Unbreakable:1b,armor:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.chest with iron_chestplate{armor:1,Unbreakable:1b,HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{Name:'{"text":"True Speed Chestplate","color":"dark_red","italic":false}',color:3223857}}
item replace entity @s armor.legs with iron_leggings{armor:1,Unbreakable:1b,HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{Name:'{"text":"True Speed Leggings","color":"dark_red","italic":false}',color:4342338}}
item replace entity @s armor.feet with iron_boots{armor:1,Unbreakable:1b,HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{Name:'{"text":"True Speed Boots","color":"dark_red","italic":false}',color:6250335}}


execute unless score @s ItemAtmr matches 2.. run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"痛苦加速","color":"dark_red","italic":false}',Lore:['{"text":"允许你以牺牲生命为代价获得速度","color":"gray","italic":false}','{"text":" ","color":"gray","italic":false}','[{"text":"右键时：","color":"gold","italic":false},{"text":"获得6秒的速度 III 并受到6点伤害","color":"gray","italic":false}]','{"text":" ","color":"gray","italic":false}','{"text":"每12秒可用一次","color":"gold","italic":false}']},HideFlags:127,Unbreakable:1b,CustomModelData:13,armor:1} 1
execute if score @s ItemAtmr matches 2.. run function items:a/standin

