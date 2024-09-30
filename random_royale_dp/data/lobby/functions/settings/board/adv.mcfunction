execute if score adv SettingsLob matches 0 positioned 458 140 466 run tellraw @p ["",{"text":"[Settings] ","color":"gray"},{"text":"Advanced settings enabled","color":"yellow"}]
execute if score adv SettingsLob matches 0 run data merge block 459 139 466 {Color:"pink",GlowingText:1b,Text1:'[{"text":"Disable Advanced","color":"light_purple","italic":false}]',Text2:'{"text":"Settings","color":"light_purple","italic":false}'}
execute if score adv SettingsLob matches 0 run setblock 458 140 466 minecraft:polished_blackstone_button[powered=false,face=floor]
execute if score adv SettingsLob matches 0 run scoreboard players set adv SettingsLob 1

execute if block 458 140 466 minecraft:polished_blackstone_button[powered=true] if score adv SettingsLob matches 1 positioned 458 140 466 run tellraw @p ["",{"text":"[Settings] ","color":"gray"},{"text":"Advanced settings disabled","color":"yellow"}]
execute if block 458 140 466 minecraft:polished_blackstone_button[powered=true] if score adv SettingsLob matches 1 run data merge block 459 139 466 {Color:"pink",GlowingText:1b,Text1:'[{"text":"Enable Advanced","color":"light_purple","italic":false}]',Text2:'{"text":"Settings","color":"light_purple","italic":false}'}
execute if block 458 140 466 minecraft:polished_blackstone_button[powered=true] if score adv SettingsLob matches 1 run scoreboard players set adv SettingsLob 0
setblock 458 140 466 minecraft:polished_blackstone_button[powered=false,face=floor]
function lobby:settings/display/main