scoreboard players operation #store ItemMtmr = 100 Num
scoreboard players operation #store2 ItemMtmr = @s ItemMtmr
scoreboard players operation #store2 ItemMtmr *= 100 Num
scoreboard players operation #store2 ItemMtmr /= 20 Num
scoreboard players operation #store ItemMtmr -= #store2 ItemMtmr

item replace entity @s hotbar.0 with carrot_on_a_stick{display:{Name:'{"text":"胡萝卜发射器","color":"gold","italic":false}',Lore:['{"text":"给全家人准备的肯德基爆炸胡萝卜","color":"gray","italic":false}','{"text":" ","color":"gray","italic":false}','[{"text":"右键时：","color":"gold","italic":false},{"text":"抛出一个爆炸胡萝卜","color":"gray","italic":false}]']},HideFlags:127,main:1} 1
item modify entity @s hotbar.0 items:m_cool
