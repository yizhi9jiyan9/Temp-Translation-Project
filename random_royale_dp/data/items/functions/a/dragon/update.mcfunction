item replace entity @s armor.head with dragon_head{armor:1,Unbreakable:1b,HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{Name:'{"text":"Dragon Mask","color":"black","italic":false}'}}
item replace entity @s armor.chest with elytra{armor:1,Unbreakable:1b,HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{Name:'{"text":"Dragon Wings","color":"black","italic":false}'}}
item replace entity @s armor.legs with leather_leggings{armor:1,Unbreakable:1b,HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{Name:'{"text":"Dragon Leggings","color":"black","italic":false}',color:8389248}}
item replace entity @s armor.feet with leather_boots{armor:1,Unbreakable:1b,HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{Name:'{"text":"Dragon Boots","color":"black","italic":false}',color:0}}



execute unless score @s ItemAtmr matches 2.. run item replace entity @s hotbar.2 with firework_rocket{display:{Name:'{"text":"烟花火箭","color":"red","italic":false}',Lore:['{"text":"推动你在空中滑翔","color":"gray","italic":false}','{"text":" "}','[{"text":"右键时：","color":"gold","italic":false},{"text":"使用一个烟花火箭","color":"gray"}]','{"text":" ","color":"gold","italic":false}','{"text":"每30秒可用一次","color":"gold","italic":false}']},HideFlags:127,armor:1,Fireworks:{Flight:1b}} 1
execute if score @s ItemAtmr matches 2.. run function items:a/standin
