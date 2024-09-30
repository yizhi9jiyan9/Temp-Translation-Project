gamemode adventure @s
execute unless score main_gs Stats matches 2 unless score @s Parkour matches 1.. run title @s actionbar "You will spectate the next game"
scoreboard players reset @s LeaveSpectator
execute unless entity @s[nbt={Inventory:[{Slot:8b,tag:{lobby:1}}]}] run clear @s carrot_on_a_stick{lobby:1}
execute unless score @s Parkour matches 1.. unless entity @s[nbt={Inventory:[{Slot:8b,tag:{lobby:1}}]}] run item replace entity @s hotbar.8 with carrot_on_a_stick{lobby:1,display:{Name:'{"text":"Join Spectators","color":"gray","italic":false}',Lore:['{"text":"Right click to spectate","color":"gold","italic":false}','{"text":"the next game","color":"gold","italic":false}']},HideFlags:127,Unbreakable:1b} 1
execute if score @s ICarrot_stick matches 1.. if entity @s[nbt={SelectedItem:{tag:{lobby:1}}}] run function lobby:players/spec/leave 
function lobby:players/book
