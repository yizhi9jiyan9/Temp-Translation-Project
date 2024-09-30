##What is run as each player##

#items code 
function items:m/main
function items:s/main
function items:a/main

#check if inventory update needed
execute unless entity @s[nbt={Inventory:[{Slot:0b,tag:{main:1}}]}] run function items:m/update
execute unless entity @s[nbt={Inventory:[{Slot:1b,tag:{second:1}}]}] run function items:s/update
execute unless entity @s[nbt={Inventory:[{Slot:2b,tag:{armor:1}}]}] run function items:a/update

execute unless entity @s[nbt={Inventory:[{Slot:3b,tag:{glass:3}}]}] run clear @s black_stained_glass_pane{glass:3}
execute unless entity @s[nbt={Inventory:[{Slot:3b,tag:{glass:3}}]}] run item replace entity @s hotbar.3 with black_stained_glass_pane{display:{Name:'{"text":" ","italic":false}'},HideFlags:127,glass:3}
execute unless entity @s[nbt={Inventory:[{Slot:4b,tag:{glass:4}}]}] run clear @s black_stained_glass_pane{glass:4}
execute unless entity @s[nbt={Inventory:[{Slot:4b,tag:{glass:4}}]}] run item replace entity @s hotbar.4 with black_stained_glass_pane{display:{Name:'{"text":" ","italic":false}'},HideFlags:127,glass:4}
execute unless entity @s[nbt={Inventory:[{Slot:5b,tag:{glass:5}}]}] run clear @s black_stained_glass_pane{glass:5}
execute unless entity @s[nbt={Inventory:[{Slot:5b,tag:{glass:5}}]}] run item replace entity @s hotbar.5 with black_stained_glass_pane{display:{Name:'{"text":" ","italic":false}'},HideFlags:127,glass:5}
execute unless entity @s[nbt={Inventory:[{Slot:6b,tag:{glass:6}}]}] run clear @s black_stained_glass_pane{glass:6}
execute unless entity @s[nbt={Inventory:[{Slot:6b,tag:{glass:6}}]}] run item replace entity @s hotbar.6 with black_stained_glass_pane{display:{Name:'{"text":" ","italic":false}'},HideFlags:127,glass:6}
execute unless entity @s[nbt={Inventory:[{Slot:7b,tag:{glass:7}}]}] run clear @s black_stained_glass_pane{glass:7}
execute unless entity @s[nbt={Inventory:[{Slot:7b,tag:{glass:7}}]}] run item replace entity @s hotbar.7 with black_stained_glass_pane{display:{Name:'{"text":" ","italic":false}'},HideFlags:127,glass:7}
execute unless entity @s[nbt={Inventory:[{Slot:8b,tag:{glass:8}}]}] run clear @s arrow{glass:8}
execute unless entity @s[nbt={Inventory:[{Slot:8b,tag:{glass:8}}]}] run item replace entity @s hotbar.8 with arrow{display:{Name:'{"text":" ","italic":false}'},HideFlags:127,glass:8}