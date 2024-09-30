item replace entity @s armor.head with leather_helmet{display:{Name:'{"text":"Jetpack Cap","color":"aqua","italic":false}',color:121410},HideFlags:127,Unbreakable:1b,armor:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.chest with iron_chestplate{armor:1,Unbreakable:1b,HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{Name:'{"text":"Jetpack Chestplate","color":"aqua","italic":false}'}}
item replace entity @s armor.legs with leather_leggings{armor:1,Unbreakable:1b,HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{Name:'{"text":"Jetpack Leggings","color":"aqua","italic":false}',color:121533}}
item replace entity @s armor.feet with leather_boots{armor:1,Unbreakable:1b,HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{Name:'{"text":"Jetpack Boots","color":"aqua","italic":false}',color:108506}}


execute unless score @s ItemAtmr matches 2.. run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"喷气背包","color":"aqua","italic":false}',Lore:['{"text":"让你飞起来并摘下星星！","color":"gray","italic":false}','{"text":" ","color":"gray","italic":false}','[{"text":"右键时：","color":"gold","italic":false},{"text":"获得持续2秒的漂浮 II","color":"gray","italic":false}]','{"text":" ","color":"gray","italic":false}','{"text":"每7秒可用一次","color":"gold","italic":false}']},HideFlags:127,Unbreakable:1b,CustomModelData:13,armor:1} 1
execute if score @s ItemAtmr matches 2.. run function items:a/standin
