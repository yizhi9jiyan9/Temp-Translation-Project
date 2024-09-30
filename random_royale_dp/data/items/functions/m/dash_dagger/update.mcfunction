scoreboard players operation #store ItemMtmr = 100 Num
scoreboard players operation #store2 ItemMtmr = @s ItemMtmr
scoreboard players operation #store2 ItemMtmr *= 100 Num
scoreboard players operation #store2 ItemMtmr /= 100 Num
scoreboard players operation #store ItemMtmr -= #store2 ItemMtmr

item replace entity @s hotbar.0 with carrot_on_a_stick{CustomModelData:109,display:{Name:'{"text":"末影匕首","color":"dark_aqua","italic":false}',Lore:['{"text":"一把轻而快的匕首","color":"gray","italic":false}','{"text":"它可以使你瞬间移动","color":"gray","italic":false}','{"text":" "}','[{"text":"右键时：","color":"gold","italic":false},{"text":"传送到你视线所在的地方","color":"gray","italic":false}]','{"text":" "}','{"text":"信息:","color":"gold","italic":false}','{"text":" 6 攻击伤害","color":"gray","italic":false}','{"text":" 2 攻击速度","color":"gray","italic":false}']},HideFlags:127,main:1,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:5,Operation:0,UUID:[I;1341162368,-1320925289,-1169560349,-1031662976]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2,Operation:0,UUID:[I;932072879,1595886720,-1864765611,-1069326441]}]} 1
item modify entity @s hotbar.0 items:m_cool
