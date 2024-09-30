execute unless score @s ItemAtmr matches 200.. run item replace entity @s armor.head with player_head{display:{Name:'{"text":"Bat Mask","color":"#2B2B2B","italic":false}'},HideFlags:127,Unbreakable:1b,armor:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],SkullOwner:{Id:[I;1331404383,-1076739259,-1376811539,1267859806],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjY4MWE3MmRhNzI2M2NhOWFlZjA2NjU0MmVjY2E3YTE4MGM0MGUzMjhjMDQ2M2ZjYjExNGNiM2I4MzA1NzU1MiJ9fX0="}]}}}
execute unless score @s ItemAtmr matches 200.. run item replace entity @s armor.chest with iron_chestplate{armor:1,Unbreakable:1b,HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{Name:'{"text":"Bat Chestplate","color":"dark_purple","italic":false}'}}
execute unless score @s ItemAtmr matches 200.. run item replace entity @s armor.legs with iron_leggings{armor:1,Unbreakable:1b,HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{Name:'{"text":"Bat Leggings","color":"dark_purple","italic":false}',color:4784713}}
execute unless score @s ItemAtmr matches 200.. run item replace entity @s armor.feet with iron_boots{armor:1,Unbreakable:1b,HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{Name:'{"text":"Bat Boots","color":"dark_purple","italic":false}',color:2687010}}
execute if score @s ItemAtmr matches 200.. run item replace entity @s armor.head with air
execute if score @s ItemAtmr matches 200.. run item replace entity @s armor.chest with air
execute if score @s ItemAtmr matches 200.. run item replace entity @s armor.legs with air
execute if score @s ItemAtmr matches 200.. run item replace entity @s armor.feet with air



execute unless score @s ItemAtmr matches 2.. run item replace entity @s hotbar.2 with carrot_on_a_stick{CustomModelData:13,display:{Name:'{"text":"变成蝙蝠","color":"#404040","italic":false}',Lore:['{"text":"使你变成一只真正的蝙蝠！","color":"gray","italic":false}','{"text":" "}','[{"text":"右键时：","color":"gold","italic":false},{"text":"你会变成一只持续10秒的蝙蝠，","color":"gray"}]','{"text":"速度会显著提高，但无法命中敌人","color":"gray","italic":false}','{"text":" ","color":"gold","italic":false}','{"text":"每20秒可用一次","color":"gold","italic":false}']},HideFlags:127,Unbreakable:1b,armor:1} 1
execute if score @s ItemAtmr matches 2.. run function items:a/standin
