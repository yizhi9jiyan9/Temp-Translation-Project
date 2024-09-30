item replace entity @s armor.head with creeper_head{armor:1,Unbreakable:1b,HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{Name:'{"text":"Creeper Mask","color":"dark_green","italic":false}'}}
item replace entity @s armor.chest with iron_chestplate{armor:1,Unbreakable:1b,HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{Name:'{"text":"Creeper Chestplate","color":"dark_green","italic":false}',color:29706}}
item replace entity @s armor.legs with leather_leggings{armor:1,Unbreakable:1b,HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{Name:'{"text":"Creeper Leggings","color":"dark_green","italic":false}',color:1220894}}
item replace entity @s armor.feet with leather_boots{display:{Name:'{"text":"Creeper Boots","color":"dark_green","italic":false}',color:1955885},HideFlags:127,Unbreakable:1b,armor:1,Enchantments:[{id:"minecraft:feather_falling",lvl:10s},{id:"minecraft:binding_curse",lvl:1s}]}


execute unless score @s ItemAtmr matches 2.. run item replace entity @s hotbar.2 with carrot_on_a_stick{CustomModelData:13,display:{Name:'{"text":"自爆！","color":"dark_gray","italic":false}',Lore:['{"text":"使你周围的人受到爆炸伤害","color":"gray","italic":false}','{"text":" "}','[{"text":"右键时：","color":"gold","italic":false},{"text":"使你爆炸！","color":"gray"}]','{"text":" ","color":"gold","italic":false}','{"text":"每7秒可用一次","color":"gold","italic":false}']},HideFlags:127,Unbreakable:1b,armor:1} 1
execute if score @s ItemAtmr matches 2.. run function items:a/standin
