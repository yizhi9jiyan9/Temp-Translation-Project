#places all of the items back 

#clickable line 1 (enabled)
execute if score s1 ItemList matches 1 run item replace block ~ ~ ~ container.0 with phantom_membrane{CustomModelData:101,display:{Name:'{"text":"金苹果","color":"yellow","italic":false}',Lore:['{"text":"一个简单的金苹果","color":"gray","italic":false}','{"text":" "}','[{"text":"食用后：","color":"gold","italic":false},{"text":"再生 II","color":"gray","italic":false}]','{"text":"持续5秒 / 伤害吸收","color":"gray","italic":false}','{"text":"持续2分钟","color":"gray","italic":false}','{"text":" "}','{"text":"每10秒补充一次","color":"gold","italic":false}']},HideFlags:127,objd:{gui:1b}} 1
execute if score s2 ItemList matches 1 run item replace block ~ ~ ~ container.1 with potion{CustomModelData:102,display:{Name:'{"text":"力量药水 I（00:08）","color":"red","italic":false}',Lore:['{"text":"一小瓶力量药水","color":"gray","italic":false}','{"text":" "}','[{"text":"饮用后：","color":"gold","italic":false},{"text":"力量 II","color":"gray","italic":false}]','{"text":"持续12秒","color":"gray","italic":false}','{"text":" "}','{"text":"每20秒补充一次","color":"gold","italic":false}']},CustomPotionColor:10354688,HideFlags:127,objd:{gui:1b}} 1
execute if score s3 ItemList matches 1 run item replace block ~ ~ ~ container.2 with splash_potion{CustomModelData:103,display:{Name:'{"text":"虚弱药水 I（00:20）","color":"#6900B8","italic":false}',Lore:['{"text":"一小瓶喷溅式虚弱药水","color":"gray","italic":false}','{"text":" "}','[{"text":"右键时：","color":"gold","italic":false},{"text":"抛出持续30秒的喷溅式虚弱药水 III","color":"gray","italic":false}]','{"text":" ","italic":false}','{"text":"每15秒补充一次","color":"gold","italic":false}']},CustomPotionColor:6553758,HideFlags:127,objd:{gui:1b}} 
execute if score s4 ItemList matches 1 run item replace block ~ ~ ~ container.3 with phantom_membrane{CustomModelData:104,display:{Name:'{"text":"可投掷TNT","color":"red","italic":false}',Lore:['{"text":"可以扔的TNT","color":"gray","italic":false}','{"text":" "}','[{"text":"右键时：","color":"gold","italic":false},{"text":"抛出TNT并在碰撞后爆炸","color":"gray","italic":false}]','{"text":" "}','{"text":"每15秒补充一次","color":"gold","italic":false}']},HideFlags:127,objd:{gui:1b}} 1
execute if score s5 ItemList matches 1 run item replace block ~ ~ ~ container.4 with phantom_membrane{CustomModelData:105,display:{Name:'{"text":"爆炸烟花","color":"red","italic":false}',Lore:['{"text":"一个装有可以爆炸的烟花的驽","color":"gray","italic":false}','{"text":" "}','[{"text":"右键时：","color":"gold","italic":false},{"text":"释放烟花并在撞击后爆炸","color":"gray","italic":false}]','{"text":" "}','{"text":"每6秒补充一次","color":"gold","italic":false}']},HideFlags:127,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b},{},{}],Charged:1b,objd:{gui:1b}}
execute if score s6 ItemList matches 1 run item replace block ~ ~ ~ container.5 with phantom_membrane{CustomModelData:106,display:{Name:'{"text":"搭路蛋","color":"yellow","italic":false}',Lore:['{"text":"架起一座桥来帮你跨越巨大的鸿沟！","color":"gray","italic":false}','{"text":" "}','[{"text":"右键时：","color":"gold","italic":false},{"text":"扔出鸡蛋后","color":"gray","italic":false}]','{"text":"将按照它的轨迹生成一座桥","color":"gray","italic":false}','{"text":" ","italic":false}','{"text":"每25秒补充一次","color":"gold","italic":false}']},HideFlags:127,objd:{gui:1b}} 1
execute if score s7 ItemList matches 1 run item replace block ~ ~ ~ container.6 with phantom_membrane{CustomModelData:107,display:{Name:'{"text":"僵尸猪灵","color":"red","italic":false}',Lore:['{"text":"生成一只僵尸猪灵来帮助你战斗","color":"gray","italic":false}','{"text":" "}','[{"text":"右键时：","color":"gold","italic":false},{"text":"生成一只虚弱的僵尸猪灵，","color":"gray","italic":false}]','{"text":"它会攻击最近的玩家","color":"gray","italic":false}','{"text":" "}','{"text":"每20秒补充一次","color":"gold","italic":false}']},HideFlags:127,Unbreakable:1b,objd:{gui:1b}} 1
execute if score s8 ItemList matches 1 run item replace block ~ ~ ~ container.7 with lingering_potion{CustomModelData:108,display:{Name:'{"text":"滞留型漂浮药水","color":"aqua","italic":false}',Lore:['{"text":"创建一个领域来反转所有人的重力","color":"gray","italic":false}','{"text":" "}','[{"text":"右键时：","color":"gold","italic":false},{"text":"抛出滞留型漂浮药水","color":"gray","italic":false}]','{"text":" ","italic":false}','{"text":"每15秒补充一次","color":"gold","italic":false}']},CustomPotionColor:65518,HideFlags:127,objd:{gui:1b}} 1
execute if score s9 ItemList matches 1 run item replace block ~ ~ ~ container.8 with phantom_membrane{CustomModelData:109,display:{Name:'{"text":"玩家位置交换","color":"dark_purple","italic":false}',Lore:['{"text":"与你视线所在的玩家进行位置交换","color":"gray","italic":false}','{"text":" "}','[{"text":"右键时：","color":"gold","italic":false},{"text":"与你视线所在的玩家进行位置交换","color":"gray","italic":false}]','{"text":" "}','{"text":"每15秒补充一次","color":"gold","italic":false}']},HideFlags:127,Unbreakable:1b,objd:{gui:1b}} 1

#clickable line 2 (disabled)
execute if score s1 ItemList matches 0 run item replace block ~ ~ ~ container.0 with blaze_powder{CustomModelData:101,display:{Name:'{"text":"Golden Apple","color":"yellow","italic":false}',Lore:['{"text":"A simple golden apple","color":"gray","italic":false}','{"text":" "}','[{"text":"食用时：","color":"gold","italic":false},{"text":"再生 II for","color":"gray","italic":false}]','{"text":"5 seconds / Absorption","color":"gray","italic":false}','{"text":"for 2 minutes","color":"gray","italic":false}','{"text":" "}','{"text":"Respawns every 10 seconds","color":"gold","italic":false}']},HideFlags:127,objd:{gui:1b}} 1
execute if score s2 ItemList matches 0 run item replace block ~ ~ ~ container.1 with blaze_powder{CustomModelData:102,display:{Name:'{"text":"Strength I Potion (00:08)","color":"red","italic":false}',Lore:['{"text":"A small strength potion","color":"gray","italic":false}','{"text":" "}','[{"text":"Drink: ","color":"gold","italic":false},{"text":"Strength II for","color":"gray","italic":false}]','{"text":"12 seconds","color":"gray","italic":false}','{"text":" "}','{"text":"Respawns every 20 seconds","color":"gold","italic":false}']},HideFlags:127,objd:{gui:1b}} 1
execute if score s3 ItemList matches 0 run item replace block ~ ~ ~ container.2 with blaze_powder{CustomModelData:103,display:{Name:'{"text":"Weakness I Potion (00:20)","color":"#6900B8","italic":false}',Lore:['{"text":"A small throwable weakness potion","color":"gray","italic":false}','{"text":" "}','[{"text":"右键时：","color":"gold","italic":false},{"text":"Throws weakness","color":"gray","italic":false}]','{"text":"II, 30 second duration potion","color":"gray","italic":false}','{"text":" ","italic":false}','{"text":"Respawns every 15 seconds","color":"gold","italic":false}']},HideFlags:127,objd:{gui:1b}} 
execute if score s4 ItemList matches 0 run item replace block ~ ~ ~ container.3 with blaze_powder{CustomModelData:104,display:{Name:'{"text":"Throwable TNT","color":"red","italic":false}',Lore:['{"text":"TNT but you can throw it!","color":"gray","italic":false}','{"text":" "}','[{"text":"右键时：","color":"gold","italic":false},{"text":"Throws TNT that","color":"gray","italic":false}]','{"text":"primes on impact","color":"gray","italic":false}','{"text":" "}','{"text":"Respawns every 15 seconds","color":"gold","italic":false}']},HideFlags:127,objd:{gui:1b}} 1
execute if score s5 ItemList matches 0 run item replace block ~ ~ ~ container.4 with blaze_powder{CustomModelData:105,display:{Name:'{"text":"Boom Rocket","color":"red","italic":false}',Lore:['{"text":"A crossbow loaded with","color":"gray","italic":false}','{"text":"a highly explosive firework","color":"gray","italic":false}','{"text":" "}','[{"text":"右键时：","color":"gold","italic":false},{"text":"Releases firework","color":"gray","italic":false}]','{"text":"which explodes on impact","color":"gray","italic":false}','{"text":" "}','{"text":"Respawns every 6 seconds","color":"gold","italic":false}']},HideFlags:127,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b},{},{}],Charged:1b,objd:{gui:1b}}
execute if score s6 ItemList matches 0 run item replace block ~ ~ ~ container.5 with blaze_powder{CustomModelData:106,display:{Name:'{"text":"Bridge Egg","color":"yellow","italic":false}',Lore:['{"text":"Will form a bridge to help","color":"gray","italic":false}','{"text":"you cross large gaps!","color":"gray","italic":false}','{"text":" "}','[{"text":"右键时：","color":"gold","italic":false},{"text":"Throws an egg","color":"gray","italic":false}]','{"text":"that wil build a bridge under ","color":"gray","italic":false}','{"text":"it as it flies","color":"gray","italic":false}','{"text":" ","italic":false}','{"text":"Respawns every 25 seconds","color":"gold","italic":false}']},HideFlags:127,objd:{gui:1b}} 1
execute if score s7 ItemList matches 0 run item replace block ~ ~ ~ container.6 with blaze_powder{CustomModelData:107,display:{Name:'{"text":"Zombie Piglin","color":"red","italic":false}',Lore:['{"text":"Summon a zombified piglin","color":"gray","italic":false}','{"text":"to help you  fight","color":"gray","italic":false}','{"text":" "}','[{"text":"右键时：","color":"gold","italic":false},{"text":"Summon a weakened","color":"gray","italic":false}]','{"text":"zombified piglin that will","color":"gray","italic":false}','{"text":"attack the nearest player","color":"gray","italic":false}','{"text":" "}','{"text":"Respawns every 20 seconds","color":"gold","italic":false}']},HideFlags:127,Unbreakable:1b,objd:{gui:1b}} 1
execute if score s8 ItemList matches 0 run item replace block ~ ~ ~ container.7 with blaze_powder{CustomModelData:108,display:{Name:'{"text":"Antigravity Field","color":"aqua","italic":false}',Lore:['{"text":"Creates a field that reverses","color":"gray","italic":false}','{"text":"gravity of anyone in it","color":"gray","italic":false}','{"text":" "}','[{"text":"右键时：","color":"gold","italic":false},{"text":"Throws levitiation","color":"gray","italic":false}]','{"text":"lingering potion","color":"gray","italic":false}','{"text":" ","italic":false}','{"text":"Respawns every 15 seconds","color":"gold","italic":false}']},HideFlags:127,objd:{gui:1b}} 1
execute if score s9 ItemList matches 0 run item replace block ~ ~ ~ container.8 with blaze_powder{CustomModelData:109,display:{Name:'{"text":"Player Swap","color":"dark_purple","italic":false}',Lore:['{"text":"Swap with the player","color":"gray","italic":false}','{"text":"you are looking at","color":"gray","italic":false}','{"text":" "}','[{"text":"右键时：","color":"gold","italic":false},{"text":"Swap with the","color":"gray","italic":false}]','{"text":"the player in front of you","color":"gray","italic":false}','{"text":" "}','{"text":"Respawns every 15 seconds","color":"gold","italic":false}']},HideFlags:127,Unbreakable:1b,objd:{gui:1b}} 1


#clickables line 2 (enabled)
execute if score s10 ItemList matches 1 run item replace block ~ ~ ~ container.9 with phantom_membrane{CustomModelData:110,display:{Name:'{"text":"苦力怕","color":"dark_green","italic":false}',Lore:['{"text":"生成一只苦力怕并炸飞你的敌人","color":"gray","italic":false}','{"text":" "}','[{"text":"右键时：","color":"gold","italic":false},{"text":"生成一只苦力怕，","color":"gray","italic":false}]','{"text":"它将在5秒后爆炸","color":"gray","italic":false}','{"text":" "}','{"text":"每12秒补充一次","color":"gold","italic":false}']},HideFlags:127,Unbreakable:1b,objd:{gui:1b}} 1
execute if score s11 ItemList matches 1 run item replace block ~ ~ ~ container.10 with horse_spawn_egg{CustomModelData:111,display:{Name:'{"text":"马","color":"#CC9106","italic":false}',Lore:['{"text":"生成一只马！","color":"gray","italic":false}','{"text":" "}','[{"text":"右键时：","color":"gold","italic":false},{"text":"生成一只可以骑的马","color":"gray","italic":false}]','{"text":" "}','{"text":"每60秒补充一次","color":"gold","italic":false}']},HideFlags:127,objd:{gui:1b}} 1
execute if score s12 ItemList matches 1 run item replace block ~ ~ ~ container.11 with phantom_membrane{CustomModelData:112,display:{Name:'{"text":"防御墙","color":"dark_gray","italic":false}',Lore:['{"text":"建造一堵墙。","color":"gray","italic":false}','{"text":" "}','[{"text":"右键时：","color":"gold","italic":false},{"text":"在你面前创建一堵很小的墙","color":"gray","italic":false}]','{"text":" "}','{"text":"每15秒补充一次","color":"gold","italic":false}']},HideFlags:127,Unbreakable:1b,objd:{gui:1b}} 1
execute if score s13 ItemList matches 1 run item replace block ~ ~ ~ container.12 with phantom_membrane{CustomModelData:113,display:{Name:'{"text":"苦力怕核打击","color":"dark_red","italic":false}',Lore:['{"text":"将彻底摧毁一片方形区域","color":"gray","italic":false}','{"text":" "}','[{"text":"右键时：","color":"gold","italic":false},{"text":"在10秒后彻底摧毁一片方形区域","color":"gray","italic":false}]','{"text":" "}','{"text":"每5分钟补充一次","color":"gold","italic":false}']},HideFlags:127,Unbreakable:1b,objd:{gui:1b}} 1
execute if score s14 ItemList matches 1 run item replace block ~ ~ ~ container.13 with phantom_membrane{CustomModelData:114,display:{Name:'{"text":"镐","color":"dark_blue","italic":false}',Lore:['{"text":"破坏方块。","color":"gray","italic":false}','{"text":" "}','[{"text":"左键时：","color":"gold","italic":false},{"text":"破坏方块","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,objd:{gui:1b}} 1
execute if score s15 ItemList matches 1 run item replace block ~ ~ ~ container.14 with phantom_membrane{CustomModelData:115,display:{Name:'{"text":"空间抬升术","color":"dark_aqua","italic":false}',Lore:['{"text":"使地面和地面上的生物向上移动10秒","color":"gray","italic":false}','{"text":" "}','[{"text":"右键时：","color":"gold","italic":false},{"text":"将7x7区域内的玩家和地面传送到高空","color":"gray","italic":false}]','{"text":" "}','{"text":"每25秒补充一次","color":"gold","italic":false}']},HideFlags:127,Unbreakable:1b,objd:{gui:1b}} 1
execute if score s16 ItemList matches 1 run item replace block ~ ~ ~ container.15 with phantom_membrane{CustomModelData:116,display:{Name:'{"text":"可投掷陷阱","color":"green","italic":false}',Lore:['{"text":"一个可以被抛出的陷阱！","color":"gray","italic":false}','{"text":" "}','[{"text":"右键时：","color":"gold","italic":false},{"text":"放置一个陷阱，并让任何碰到它的人陷入其中","color":"gray","italic":false}]','{"text":" "}','{"text":"每15秒补充一次","color":"gold","italic":false}']},HideFlags:127,objd:{gui:1b}} 1
execute if score s17 ItemList matches 1 run item replace block ~ ~ ~ container.16 with lingering_potion{CustomModelData:117,display:{Name:'{"text":"滞留型治疗药水","color":"red","italic":false}',Lore:['{"text":"创建一个可以治愈所有人的领域","color":"gray","italic":false}','{"text":" "}','[{"text":"右键时：","color":"gold","italic":false},{"text":"抛出滞留型治疗药水","color":"gray","italic":false}]','{"text":" ","italic":false}','{"text":"每15秒补充一次","color":"gold","italic":false}']},CustomPotionColor:16744576,HideFlags:127,objd:{gui:1b}} 1
execute if score s18 ItemList matches 1 run item replace block ~ ~ ~ container.17 with phantom_membrane{CustomModelData:118,display:{Name:'{"text":"彗星","color":"gray","italic":false}',Lore:['{"text":"生成一个彗星并坠向你视线所在的位置","color":"gray","italic":false}','{"text":" "}','[{"text":"右键时：","color":"gold","italic":false},{"text":"生成一个彗星并在3秒后坠落","color":"gray","italic":false}]','{"text":" "}','{"text":"每15秒补充一次","color":"gold","italic":false}']},HideFlags:127,Unbreakable:1b,objd:{gui:1b}} 1


#clickables line 2 (disabled)
execute if score s10 ItemList matches 0 run item replace block ~ ~ ~ container.9 with blaze_powder{CustomModelData:110,display:{Name:'{"text":"Creeper","color":"dark_green","italic":false}',Lore:['{"text":"Summon a creeper to","color":"gray","italic":false}','{"text":"explode your enemies away","color":"gray","italic":false}','{"text":" "}','[{"text":"右键时：","color":"gold","italic":false},{"text":"Summon a creeper","color":"gray","italic":false}]','{"text":"that will explode after 5","color":"gray","italic":false}','{"text":"seconds","color":"gray","italic":false}','{"text":" "}','{"text":"Respawns every 12 seconds","color":"gold","italic":false}']},HideFlags:127,Unbreakable:1b,objd:{gui:1b}} 1
execute if score s11 ItemList matches 0 run item replace block ~ ~ ~ container.10 with blaze_powder{CustomModelData:111,display:{Name:'{"text":"Steed","color":"#CC9106","italic":false}',Lore:['{"text":"Summons a horse friend","color":"gray","italic":false}','{"text":" "}','[{"text":"Right Click ","color":"gold","italic":false},{"text":"Summons a horse","color":"gray","italic":false}]','{"text":"for you to ride","color":"gray","italic":false}','{"text":" "}','{"text":"Respawns every 60 seconds","color":"gold","italic":false}']},HideFlags:127,objd:{gui:1b}} 1
execute if score s12 ItemList matches 0 run item replace block ~ ~ ~ container.11 with blaze_powder{CustomModelData:112,display:{Name:'{"text":"Wall","color":"dark_gray","italic":false}',Lore:['{"text":"Place a wall.","color":"gray","italic":false}','{"text":" "}','[{"text":"右键时：","color":"gold","italic":false},{"text":"Builds a small","color":"gray","italic":false}]','{"text":"wall in front of you","color":"gray","italic":false}','{"text":" "}','{"text":"Respawns every 15 seconds","color":"gold","italic":false}']},HideFlags:127,Unbreakable:1b,objd:{gui:1b}} 1
execute if score s13 ItemList matches 0 run item replace block ~ ~ ~ container.12 with blaze_powder{CustomModelData:113,display:{Name:'{"text":"CREEPER STRIKE","color":"dark_red","italic":false}',Lore:['{"text":"Will completly destroy 1","color":"gray","italic":false}','{"text":"square","color":"gray","italic":false}','{"text":" "}','[{"text":"右键时：","color":"gold","italic":false},{"text":"Will destroy the","color":"gray","italic":false}]','{"text":"your square after","color":"gray","italic":false}','{"text":"after a 10 second timer","color":"gray","italic":false}','{"text":" "}','{"text":"Respawns every 300 seconds","color":"gold","italic":false}']},HideFlags:127,Unbreakable:1b,objd:{gui:1b}} 1
execute if score s14 ItemList matches 0 run item replace block ~ ~ ~ container.13 with blaze_powder{CustomModelData:114,display:{Name:'{"text":"Pickaxe","color":"dark_blue","italic":false}',Lore:['{"text":"Breaks blocks.","color":"gray","italic":false}','{"text":" "}','[{"text":"Left Click: ","color":"gold","italic":false},{"text":"Break blocks","color":"gray","italic":false}]']},HideFlags:127,Unbreakable:1b,objd:{gui:1b}} 1
execute if score s15 ItemList matches 0 run item replace block ~ ~ ~ container.14 with blaze_powder{CustomModelData:115,display:{Name:'{"text":"Rift","color":"dark_aqua","italic":false}',Lore:['{"text":"Moves the earth and those","color":"gray","italic":false}','{"text":"on it up for 10 seconds","color":"gray","italic":false}','{"text":" "}','[{"text":"右键时：","color":"gold","italic":false},{"text":"TP\'s the builds","color":"gray","italic":false}]','{"text":"and players up in a 7x7 box","color":"gray","italic":false}','{"text":" "}','{"text":"Respawns every 25 seconds","color":"gold","italic":false}']},HideFlags:127,Unbreakable:1b,objd:{gui:1b}} 1
execute if score s16 ItemList matches 0 run item replace block ~ ~ ~ container.15 with blaze_powder{CustomModelData:116,display:{Name:'{"text":"Throwable Trap","color":"green","italic":false}',Lore:['{"text":"A throwable trap!","color":"gray","italic":false}','{"text":" "}','[{"text":"右键时：","color":"gold","italic":false},{"text":"Throws a trap","color":"gray","italic":false}]','{"text":"that ensnares anyone on impact","color":"gray","italic":false}','{"text":" "}','{"text":"Respawns every 15 seconds","color":"gold","italic":false}']},HideFlags:127,objd:{gui:1b}} 1
execute if score s17 ItemList matches 0 run item replace block ~ ~ ~ container.16 with blaze_powder{CustomModelData:117,display:{Name:'{"text":"Healing Field","color":"red","italic":false}',Lore:['{"text":"Creates a field that heals","color":"gray","italic":false}','{"text":"anyone in it","color":"gray","italic":false}','{"text":" "}','[{"text":"右键时：","color":"gold","italic":false},{"text":"Throws regeneration","color":"gray","italic":false}]','{"text":"lingering potion","color":"gray","italic":false}','{"text":" ","italic":false}','{"text":"Respawns every 15 seconds","color":"gold","italic":false}']},HideFlags:127,objd:{gui:1b}} 1
execute if score s18 ItemList matches 0 run item replace block ~ ~ ~ container.17 with blaze_powder{CustomModelData:118,display:{Name:'{"text":"Meteor","color":"gray","italic":false}',Lore:['{"text":"Summon a meteor to","color":"gray","italic":false}','{"text":"smite your foes","color":"gray","italic":false}','{"text":" "}','[{"text":"右键时：","color":"gold","italic":false},{"text":"Summons a meteor","color":"gray","italic":false}]','{"text":"that will apear after 3 seconds","color":"gray","italic":false}','{"text":" "}','{"text":"Respawns every 15 seconds","color":"gold","italic":false}']},HideFlags:127,Unbreakable:1b,objd:{gui:1b}} 1





#clickables line 3
item replace block ~ ~ ~ container.18 with lime_concrete{display:{Name:'{"text":"Enable All","color":"green","italic":false}'},objd:{gui:1b},HideFlags:127} 1
item replace block ~ ~ ~ container.21 with diamond_sword{display:{Name:'{"text":"Mainhand Weapons","italic":false,"color":"blue"}'},objd:{gui:1b},HideFlags:127} 
item replace block ~ ~ ~ container.22 with shield{display:{Name:'{"text":"Secondaries","italic":false,"color":"red"}'},objd:{gui:1b},HideFlags:127} 
item replace block ~ ~ ~ container.23 with turtle_helmet{display:{Name:'{"text":"Armor","italic":false,"color":"green"}'},objd:{gui:1b},HideFlags:127} 
item replace block ~ ~ ~ container.26 with red_concrete{display:{Name:'{"text":"Disable All","color":"red","italic":false}'},objd:{gui:1b},HideFlags:127} 1


#background
item replace block ~ ~ ~ container.19 with minecraft:black_stained_glass_pane{display:{Name:'{"text":" ","italic":false}'},objd:{gui:1b}} 
item replace block ~ ~ ~ container.20 with minecraft:black_stained_glass_pane{display:{Name:'{"text":" ","italic":false}'},objd:{gui:1b}} 
item replace block ~ ~ ~ container.24 with minecraft:black_stained_glass_pane{display:{Name:'{"text":" ","italic":false}'},objd:{gui:1b}} 
item replace block ~ ~ ~ container.25 with minecraft:black_stained_glass_pane{display:{Name:'{"text":" ","italic":false}'},objd:{gui:1b}} 
