scoreboard players operation #store ItemMtmr = 100 Num
scoreboard players operation #store2 ItemMtmr = @s ItemMtmr
scoreboard players operation #store2 ItemMtmr *= 100 Num
scoreboard players operation #store2 ItemMtmr /= 20 Num
scoreboard players operation #store ItemMtmr -= #store2 ItemMtmr

item replace entity @s hotbar.0 with carrot_on_a_stick{CustomModelData:108,display:{Name:'{"text":"爆炸魔法棍","color":"light_purple","italic":false}',Lore:['{"text":"生成魔法光束并在撞击时爆炸","color":"gray","italic":false}','[{"text":"右键时：","color":"gold","italic":false},{"text":"射出一个魔法爆炸光束","color":"gray","italic":false}]']},HideFlags:127,main:1} 1
item modify entity @s hotbar.0 items:m_cool
