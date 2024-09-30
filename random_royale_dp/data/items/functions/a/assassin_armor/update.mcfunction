execute unless score @s ItemAtmr matches 199.. run item replace entity @s armor.head with leather_helmet{display:{Name:'{"text":"Assassin Cap","color":"gray","italic":false}',color:0},HideFlags:127,Unbreakable:1b,armor:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
execute unless score @s ItemAtmr matches 199.. run item replace entity @s armor.chest with leather_chestplate{armor:1,Unbreakable:1b,HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{Name:'{"text":"Assassin Chestplate","color":"gray","italic":false}',color:3223857}}
execute unless score @s ItemAtmr matches 199.. run item replace entity @s armor.legs with leather_leggings{armor:1,Unbreakable:1b,HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{Name:'{"text":"Assassin Leggings","color":"gray","italic":false}',color:4342338}}
execute unless score @s ItemAtmr matches 199.. run item replace entity @s armor.feet with leather_boots{armor:1,Unbreakable:1b,HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{Name:'{"text":"Assassin Boots","color":"gray","italic":false}',color:6250335}}
execute if score @s ItemAtmr matches 199.. run item replace entity @s armor.head with air
execute if score @s ItemAtmr matches 199.. run item replace entity @s armor.chest with air
execute if score @s ItemAtmr matches 199.. run item replace entity @s armor.legs with air
execute if score @s ItemAtmr matches 199.. run item replace entity @s armor.feet with air


execute unless score @s ItemAtmr matches 2.. run item replace entity @s hotbar.2 with carrot_on_a_stick{CustomModelData:13,display:{Name:'{"text":"刺客斗篷","color":"dark_gray","italic":false}',Lore:['{"text":"使你隐身","color":"gray","italic":false}','{"text":" ","color":"gray","italic":false}','[{"text":"右键时：","color":"gold","italic":false},{"text":"使你隐身10秒","color":"gray","italic":false}]','{"text":" ","color":"gray","italic":false}','{"text":"每20秒可用一次","color":"gold","italic":false}']},Unbreakable:1b,armor:1,HideFlags:127} 1
execute if score @s ItemAtmr matches 2.. run function items:a/standin
