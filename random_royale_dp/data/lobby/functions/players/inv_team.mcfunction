#detect clicking
execute if score @s ICarrot_stick matches 1.. if entity @s[nbt={SelectedItem:{tag:{lobby:6}}}] run function lobby:players/lobby_teams
execute if score @s ICarrot_stick matches 1.. if entity @s[nbt={SelectedItem:{tag:{lobby:6}}}] run tellraw @s [{"text":"[Teams] ","color":"gray"},{"text":"You will be randomly assigned a team on start","color":"dark_gray"}]
execute if score @s ICarrot_stick matches 1.. if entity @s[nbt={SelectedItem:{tag:{lobby:6}}}] at @s run execute at @s run playsound block.wooden_button.click_off master @s ~ ~ ~ 0.7
execute if score @s ICarrot_stick matches 1.. if entity @s[nbt={SelectedItem:{tag:{lobby:2}}}] run team join Red
execute if score @s ICarrot_stick matches 1.. if entity @s[nbt={SelectedItem:{tag:{lobby:2}}}] run scoreboard players set @s Team 1
execute if score @s ICarrot_stick matches 1.. if entity @s[nbt={SelectedItem:{tag:{lobby:2}}}] run tellraw @s [{"text":"[Teams] ","color":"gray"},{"text":"You joined red team!","color":"red"}]
execute if score @s ICarrot_stick matches 1.. if entity @s[nbt={SelectedItem:{tag:{lobby:2}}}] at @s run execute at @s run playsound block.wooden_button.click_on master @s ~ ~ ~ 0.7
execute if score @s ICarrot_stick matches 1.. if entity @s[nbt={SelectedItem:{tag:{lobby:3}}}] run team join Blue
execute if score @s ICarrot_stick matches 1.. if entity @s[nbt={SelectedItem:{tag:{lobby:3}}}] run scoreboard players set @s Team 2
execute if score @s ICarrot_stick matches 1.. if entity @s[nbt={SelectedItem:{tag:{lobby:3}}}] run tellraw @s [{"text":"[Teams] ","color":"gray"},{"text":"You joined blue team!","color":"blue"}]
execute if score @s ICarrot_stick matches 1.. if entity @s[nbt={SelectedItem:{tag:{lobby:3}}}] at @s run execute at @s run playsound block.wooden_button.click_on master @s ~ ~ ~ 0.7
execute if score @s ICarrot_stick matches 1.. if entity @s[nbt={SelectedItem:{tag:{lobby:4}}}] run team join Green
execute if score @s ICarrot_stick matches 1.. if entity @s[nbt={SelectedItem:{tag:{lobby:4}}}] run scoreboard players set @s Team 3
execute if score @s ICarrot_stick matches 1.. if entity @s[nbt={SelectedItem:{tag:{lobby:4}}}] run tellraw @s [{"text":"[Teams] ","color":"gray"},{"text":"You joined green team!","color":"green"}]
execute if score @s ICarrot_stick matches 1.. if entity @s[nbt={SelectedItem:{tag:{lobby:4}}}] at @s run execute at @s run playsound block.wooden_button.click_on master @s ~ ~ ~ 0.7
execute if score @s ICarrot_stick matches 1.. if entity @s[nbt={SelectedItem:{tag:{lobby:5}}}] run team join Yellow
execute if score @s ICarrot_stick matches 1.. if entity @s[nbt={SelectedItem:{tag:{lobby:5}}}] run scoreboard players set @s Team 4
execute if score @s ICarrot_stick matches 1.. if entity @s[nbt={SelectedItem:{tag:{lobby:5}}}] run tellraw @s [{"text":"[Teams] ","color":"gray"},{"text":"You joined yellow team!","color":"yellow"}]
execute if score @s ICarrot_stick matches 1.. if entity @s[nbt={SelectedItem:{tag:{lobby:5}}}] at @s run execute at @s run playsound block.wooden_button.click_on master @s ~ ~ ~ 0.7





#put in inventory
execute unless entity @s[nbt={Inventory:[{Slot:2b,tag:{lobby:6}}]}] run clear @s carrot_on_a_stick{lobby:6}
execute unless entity @s[nbt={Inventory:[{Slot:2b,tag:{lobby:6}}]}] run item replace entity @s hotbar.2 with carrot_on_a_stick{CustomModelData:6,lobby:6,team:1,display:{Name:'{"text":"Leave Team / Join Random","color":"gray","italic":false}',Lore:['{"text":"Right click to leave your team","color":"gold","italic":false}','{"text":"you will be assigned a random team on start","color":"gold","italic":false}']},HideFlags:127,Unbreakable:1b} 1
execute unless entity @s[nbt={Inventory:[{Slot:3b,tag:{lobby:2}}]}] run clear @s carrot_on_a_stick{lobby:2}
execute unless entity @s[nbt={Inventory:[{Slot:3b,tag:{lobby:2}}]}] run item replace entity @s hotbar.3 with carrot_on_a_stick{CustomModelData:4,lobby:2,team:1,display:{Name:'{"text":"Join Red Team","color":"red","italic":false}',Lore:['{"text":"Right click to join red team","color":"gold","italic":false}','{"text":"for the next game","color":"gold","italic":false}']},HideFlags:127,Unbreakable:1b} 1
execute unless entity @s[nbt={Inventory:[{Slot:4b,tag:{lobby:3}}]}] run clear @s carrot_on_a_stick{lobby:3}
execute unless entity @s[nbt={Inventory:[{Slot:4b,tag:{lobby:3}}]}] run item replace entity @s hotbar.4 with carrot_on_a_stick{CustomModelData:5,lobby:3,team:1,display:{Name:'{"text":"Join Blue Team","color":"blue","italic":false}',Lore:['{"text":"Right click to join blue team","color":"gold","italic":false}','{"text":"for the next game","color":"gold","italic":false}']},HideFlags:127,Unbreakable:1b} 1
execute if score teamNum SettingsLob matches 3.. unless entity @s[nbt={Inventory:[{Slot:5b,tag:{lobby:4}}]}] run clear @s carrot_on_a_stick{lobby:4}
execute unless score teamNum SettingsLob matches 3.. run clear @s carrot_on_a_stick{lobby:4} 
execute if score teamNum SettingsLob matches 3.. unless entity @s[nbt={Inventory:[{Slot:5b,tag:{lobby:4}}]}] run item replace entity @s hotbar.5 with carrot_on_a_stick{CustomModelData:3,lobby:4,team:1,display:{Name:'{"text":"Join Green Team","color":"dark_green","italic":false}',Lore:['{"text":"Right click to join green team","color":"gold","italic":false}','{"text":"for the next game","color":"gold","italic":false}']},HideFlags:127,Unbreakable:1b} 1
execute if score teamNum SettingsLob matches 4.. unless entity @s[nbt={Inventory:[{Slot:6b,tag:{lobby:5}}]}] run clear @s carrot_on_a_stick{lobby:5}
execute unless score teamNum SettingsLob matches 4.. run clear @s carrot_on_a_stick{lobby:5} 
execute if score teamNum SettingsLob matches 4.. unless entity @s[nbt={Inventory:[{Slot:6b,tag:{lobby:5}}]}] run item replace entity @s hotbar.6 with carrot_on_a_stick{CustomModelData:2,lobby:5,team:1,display:{Name:'{"text":"Join Yellow Team","color":"yellow","italic":false}',Lore:['{"text":"Right click to join yellow team","color":"gold","italic":false}','{"text":"for the next game","color":"gold","italic":false}']},HideFlags:127,Unbreakable:1b} 1
