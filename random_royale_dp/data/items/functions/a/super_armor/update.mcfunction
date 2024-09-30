execute if score @s ItemAtmr matches 360.. run item replace entity @s armor.head with diamond_helmet{armor:1,Unbreakable:1b,HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{Name:'{"text":"SUPER HELMET","color":"aqua","italic":false}'}}
execute if score @s ItemAtmr matches 360.. run item replace entity @s armor.chest with diamond_chestplate{armor:1,Unbreakable:1b,HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{Name:'{"text":"SUPER CHESTPLATE","color":"aqua","italic":false}'}}
execute if score @s ItemAtmr matches 360.. run item replace entity @s armor.legs with diamond_leggings{armor:1,Unbreakable:1b,HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{Name:'{"text":"SUPER LEGGINGS","color":"aqua","italic":false}'}}
execute if score @s ItemAtmr matches 360.. run item replace entity @s armor.feet with diamond_boots{armor:1,Unbreakable:1b,HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{Name:'{"text":"SUPER BOOTS","color":"aqua","italic":false}'}}

execute unless score @s ItemAtmr matches 360.. run item replace entity @s armor.head with leather_helmet{armor:1,Unbreakable:1b,HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{Name:'{"text":"super helmet","color":"aqua","italic":false}',color:61183}}
execute unless score @s ItemAtmr matches 360.. run item replace entity @s armor.chest with leather_chestplate{armor:1,Unbreakable:1b,HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{Name:'{"text":"super chestplate","color":"aqua","italic":false}',color:61183}}
execute unless score @s ItemAtmr matches 360.. run item replace entity @s armor.legs with leather_leggings{armor:1,Unbreakable:1b,HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{Name:'{"text":"super leggings","color":"aqua","italic":false}',color:61183}}
execute unless score @s ItemAtmr matches 360.. run item replace entity @s armor.feet with leather_boots{armor:1,Unbreakable:1b,HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{Name:'{"text":"supper boots","color":"aqua","italic":false}',color:61183}}


execute if score @s ItemAtmr matches 2.. run function items:a/standin
execute unless score @s ItemAtmr matches 2.. run item replace entity @s hotbar.2 with carrot_on_a_stick{CustomModelData:13,display:{Name:'{"text":"使用超级盔甲","color":"aqua","italic":false}',Lore:['{"text":"将你的盔甲升级成钻石并持续10秒","color":"gray","italic":false}','{"text":" "}','[{"text":"右键时：","color":"gold","italic":false},{"text":"变成钻石盔甲并持续10秒","color":"gray","italic":false}]','{"text":" ","color":"gold","italic":false}','{"text":"每25秒可用一次","color":"gold","italic":false}']},HideFlags:127,Unbreakable:1b,armor:1} 1

