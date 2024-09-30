item replace entity @s armor.head with leather_helmet{display:{Name:'{"text":"Inspire Cap","color":"red","italic":false}',color:16742006},HideFlags:127,Unbreakable:1b,armor:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.chest with iron_chestplate{armor:1,Unbreakable:1b,HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{Name:'{"text":"Inspire Chestplate","color":"red","italic":false}'}}
item replace entity @s armor.legs with iron_leggings{armor:1,Unbreakable:1b,HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{Name:'{"text":"Inspire Leggings","color":"red","italic":false}'}}
item replace entity @s armor.feet with iron_boots{armor:1,Unbreakable:1b,HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{Name:'{"text":"Inspire Boots","color":"red","italic":false}'}}


execute unless score @s ItemAtmr matches 2.. run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"团队激励！","color":"red","italic":false}',Lore:['{"text":"给你和你的团队施加增益","color":"gray","italic":false}','{"text":" ","color":"gray","italic":false}','[{"text":"右键时：","color":"gold","italic":false},{"text":"给你和你的团队持续4秒的速度 II","color":"gray","italic":false}]','{"text":" ","color":"gray","italic":false}','{"text":"每15秒可用一次","color":"gold","italic":false}']},HideFlags:127,Unbreakable:1b,CustomModelData:13,armor:1} 1
execute if score @s ItemAtmr matches 2.. run function items:a/standin
