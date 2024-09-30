effect give @s resistance infinite 9 true
execute if score @s FoodLevel matches ..19 run effect give @s saturation 1 10 true 

#replace hotbar with things
execute unless entity @s[nbt={Inventory:[{Slot:8b,tag:{lobby:1}}]}] run clear @s carrot_on_a_stick{lobby:1}
execute unless entity @s[nbt={Inventory:[{Slot:8b,tag:{lobby:1}}]}] unless score @s Parkour matches 1.. run item replace entity @s hotbar.8 with carrot_on_a_stick{CustomModelData:1,lobby:1,display:{Name:'{"text":"Join Spectators","color":"gray","italic":false}',Lore:['{"text":"Right click to spectate","color":"gold","italic":false}','{"text":"the next game","color":"gold","italic":false}']},HideFlags:127,Unbreakable:1b} 1
function lobby:players/book

#team joining in lobby 
execute if score teams SettingsLob matches 0 run clear @s carrot_on_a_stick{team:1}
execute if score teams SettingsLob matches 1 unless score @s Parkour matches 1.. run function lobby:players/inv_team

#join spec
execute if score @s ICarrot_stick matches 1.. if entity @s[nbt={SelectedItem:{tag:{lobby:1}}}] run function lobby:players/spec/join
