#give 
execute unless entity @s[nbt={Inventory:[{Slot:3b,tag:{parkour:1,reset:1}}]}] run clear @s carrot_on_a_stick{parkour:1,reset:1}
execute unless entity @s[nbt={Inventory:[{Slot:3b,tag:{parkour:1,reset:1}}]}] run item replace entity @s hotbar.3 with carrot_on_a_stick{CustomModelData:11,parkour:1,reset:1,display:{Name:'{"text":"Reset run","color":"gray","italic":false}',Lore:['{"text":"Right click to reset parkour run","color":"gold","italic":false}']},HideFlags:127,Unbreakable:1b} 1
execute unless entity @s[nbt={Inventory:[{Slot:4b,tag:{parkour:1,reset:2}}]}] run clear @s carrot_on_a_stick{parkour:1,reset:2}
execute unless entity @s[nbt={Inventory:[{Slot:4b,tag:{parkour:1,reset:2}}]}] run item replace entity @s hotbar.4 with carrot_on_a_stick{CustomModelData:12,parkour:1,reset:2,display:{Name:'{"text":"Leave parkour","color":"gray","italic":false}',Lore:['{"text":"Right click to stop timer and leave parkour","color":"gold","italic":false}']},HideFlags:127,Unbreakable:1b} 1



#do stuff with
execute if score @s ICarrot_stick matches 1.. if entity @s[nbt={SelectedItem:{tag:{parkour:1,reset:1}}}] run function lobby:parkour/reset
execute if score @s ICarrot_stick matches 1.. if entity @s[nbt={SelectedItem:{tag:{parkour:1,reset:2}}}] run function lobby:parkour/stop
