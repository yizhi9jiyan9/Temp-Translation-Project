item replace entity @s armor.head with player_head{SkullOwner:{Id:[I;-1303191472,1028606438,-1144555895,1234735355],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmM2YTQwNzJjNzJlMjdiMDMyMzRkNjUwYjBlNTI4MTVkODQ2NTc1MzZkYWEyM2QxMTQwYjRjN2I3ZjhkMWRkZSJ9fX0="}]}},armor:1,Unbreakable:1b,HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{Name:'{"text":"Enderman Mask","color":"dark_purple","italic":false}'}}
item replace entity @s armor.chest with iron_chestplate{armor:1,Unbreakable:1b,HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{Name:'{"text":"Enderman Chestplate","color":"dark_purple","italic":false}'}}
item replace entity @s armor.legs with leather_leggings{armor:1,Unbreakable:1b,HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{Name:'{"text":"Enderman Leggings","color":"dark_purple","italic":false}',color:4784713}}
item replace entity @s armor.feet with leather_boots{armor:1,Unbreakable:1b,HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{Name:'{"text":"Enderman Boots","color":"dark_purple","italic":false}',color:2687010}}



execute unless score @s ItemAtmr matches 2.. run item replace entity @s hotbar.2 with carrot_on_a_stick{CustomModelData:13,display:{Name:'{"text":"传送！","color":"dark_purple","italic":false}',Lore:['{"text":"使你随机传送到附近","color":"gray","italic":false}','{"text":" "}','[{"text":"右键时：","color":"gold","italic":false},{"text":"使你随机传送","color":"gray"}]','{"text":" ","color":"gold","italic":false}','{"text":"每7秒可用一次","color":"gold","italic":false}']},HideFlags:127,Unbreakable:1b,armor:1} 1
execute if score @s ItemAtmr matches 2.. run function items:a/standin
