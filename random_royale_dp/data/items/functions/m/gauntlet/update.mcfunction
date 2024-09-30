scoreboard players operation #store ItemMtmr = 100 Num
scoreboard players operation #store2 ItemMtmr = @s ItemMtmr
scoreboard players operation #store2 ItemMtmr *= 100 Num
scoreboard players operation #store2 ItemMtmr /= 400 Num
scoreboard players operation #store ItemMtmr -= #store2 ItemMtmr

item replace entity @s hotbar.0 with carrot_on_a_stick{CustomModelData:101,display:{Name:'{"text":"铁拳","color":"gray","italic":false}',Lore:['{"text":"用来攻击和锤击地面！","color":"gray","italic":false}','{"text":" ","color":"gray","italic":false}','[{"text":"右键时：","color":"gold","italic":false},{"text":"使你跳跃并击飞","color":"gray","italic":false}]','{"text":"周围的玩家","color":"gray","italic":false}','{"text":" "}','[{"text":"信息:","color":"gold","italic":false}]','{"text":"6 攻击伤害","color":"gray","italic":false}','{"text":"2 攻击速度","color":"gray","italic":false}']},HideFlags:127,Unbreakable:0b,main:1,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2,Operation:0,UUID:[I;2074525582,342772663,-1875146189,1889943560]},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:5,Operation:0,UUID:[I;1315900605,737624321,-1947210571,1956677829]}]} 1
item modify entity @s hotbar.0 items:m_cool

