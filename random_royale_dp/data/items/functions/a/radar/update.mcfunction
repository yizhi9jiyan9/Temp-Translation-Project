item replace entity @s armor.head with player_head{Display:{Name:'{"text":"Radar Helmet","color":"blue","italic":false}'},SkullOwner:{Id:[I;-1244603489,-1614461939,-1261273174,-1247891833],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGQ5M2QyMjEyZGRiMDE3ZjhkNWQ2NDFhZjNiMGFiMjIzMTNlMTMzNzM0ODUwYmNmMmI1YmExMTVhMjk3MGY1OSJ9fX0="}]}},armor:1,Unbreakable:1b,HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
item replace entity @s armor.chest with iron_chestplate{armor:1,Unbreakable:1b,HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{Name:'{"text":"Radar Chestplate","color":"blue","italic":false}'}}
item replace entity @s armor.legs with diamond_leggings{armor:1,Unbreakable:1b,HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{Name:'{"text":"Radar Leggings","color":"blue","italic":false}',color:121533}}
item replace entity @s armor.feet with iron_boots{armor:1,Unbreakable:1b,HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{Name:'{"text":"Radar Boots","color":"blue","italic":false}',color:108506}}


execute unless score @s ItemAtmr matches 2.. run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"雷达扫描","color":"blue","italic":false}',Lore:['{"text":"它将扫描你周围的玩家并使其发光","color":"gray","italic":false}','{"text":" ","color":"gray","italic":false}','[{"text":"右键时：","color":"gold","italic":false},{"text":"给20格内的所有人发光效果","color":"gray","italic":false}]','{"text":" ","color":"gray","italic":false}','{"text":"每15秒可用一次","color":"gold","italic":false}']},HideFlags:127,Unbreakable:1b,CustomModelData:13,armor:1} 1
execute if score @s ItemAtmr matches 2.. run function items:a/standin

