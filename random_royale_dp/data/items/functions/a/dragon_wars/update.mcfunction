item replace entity @s armor.head with dragon_head{armor:1,Unbreakable:1b,HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{Name:'{"text":"Dragon Mask","color":"black","italic":false}'}}
execute if score @s ItemA2 matches 0 run item replace entity @s armor.chest with elytra{armor:1,Unbreakable:1b,HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{Name:'{"text":"Dragon Wings","color":"black","italic":false}'}}
execute if score @s ItemA2 matches 1 run item replace entity @s armor.chest with air
item replace entity @s armor.legs with leather_leggings{armor:1,Unbreakable:1b,HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{Name:'{"text":"Dragon Leggings","color":"black","italic":false}',color:8389248}}
item replace entity @s armor.feet with leather_boots{armor:1,Unbreakable:1b,HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{Name:'{"text":"Dragon Boots","color":"black","italic":false}',color:0}}



execute if score @s ItemA1 matches 1.. run item replace entity @s hotbar.2 with firework_rocket{display:{Name:'{"text":"Firework","color":"red","italic":false}',Lore:['{"text":"Propels you through the air","color":"gray","italic":false}','{"text":" "}','[{"text":"Right Click: ","color":"gold","italic":false},{"text":"you use a firework","color":"gray"}]','{"text":" ","color":"gold","italic":false}','{"text":"Usable every 30 seconds","color":"gold","italic":false}']},HideFlags:127,armor:1,Fireworks:{Flight:1b}} 1
execute if score @s ItemA1 matches ..0 run item replace entity @s hotbar.2 with red_stained_glass_pane{armor:1,display:{Name:'{"text":"Armor Ability on Cooldown","color":"red","italic":false}'}} 1