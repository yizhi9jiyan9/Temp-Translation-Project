item replace entity @s armor.head with player_head{display:{Name:'{"text":"Turtle Head","color":"green","itatlic":false}'},HideFlags:255,Unbreakable:1b,armor:1,SkullOwner:{Id:[I;263396731,1584942325,-2119218530,-1939050396],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTlkNjcxMjU4MmQ2MGEwMDU4ZTRmYmVlMGU4OWRkMDg5ZmJhYmI4MGYwN2U0YTA4NzQ5MDRjOTFiYzQ4ZjA4YSJ9fX0="}]}}} 1
item replace entity @s armor.chest with iron_chestplate{armor:1,Unbreakable:1b,HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{Name:'{"text":"Turtle Chestplate","color":"gray","italic":false}',color:3265343}}
item replace entity @s armor.legs with iron_leggings{armor:1,Unbreakable:1b,HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{Name:'{"text":"Turtle Leggings","color":"gray","italic":false}',color:2142508}}
item replace entity @s armor.feet with iron_boots{armor:1,Unbreakable:1b,HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{Name:'{"text":"Turtle Boots","color":"gray","italic":false}',color:689684}}



execute unless score @s ItemAtmr matches 2.. run item replace entity @s hotbar.2 with carrot_on_a_stick{CustomModelData:13,display:{Name:'{"text":"缩入壳中","color":"green","italic":false}',Lore:['{"text":"使你缩进龟壳里","color":"gray","italic":false}','{"text":" "}','[{"text":"右键时：","color":"gold","italic":false},{"text":"获得持续5秒的缓慢和抗性提升","color":"gray"}]','{"text":" ","color":"gold","italic":false}','{"text":"每20秒可用一次","color":"gold","italic":false}']},HideFlags:127,Unbreakable:1b,armor:1} 1
execute if score @s ItemAtmr matches 2.. run function items:a/standin
