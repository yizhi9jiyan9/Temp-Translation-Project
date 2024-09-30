#give 
execute unless entity @s[nbt={Inventory:[{Slot:0b,tag:{lobby_book:1}}]}] unless score @s Parkour matches 1.. run clear @s written_book{lobby_book:1}
execute unless entity @s[nbt={Inventory:[{Slot:0b,tag:{lobby_book:1}}]}] unless score @s Parkour matches 1.. run item replace entity @s hotbar.0 with written_book{lobby_book:1,display:{Name:'{"text":"Lobby TP Book","color":"gold","italic":false}',Lore:['{"text":"Use this book to quickly","color":"gray","italic":false}','{"text":"move around the lobby","color":"gray","italic":false}']},HideFlags:127,lobby:7,title:"Lobby TP Book",author:"People on Earth",generation:0,resolved:0b,pages:['["",{"text":"-- Lobby TP Book --","color":"gold"},{"text":"\\n","color":"reset"},{"text":"(Click the text to teleport)","italic":true,"color":"gray"},{"text":"\\n\\n","color":"reset"},{"text":"1. Settings / Start","color":"blue","clickEvent":{"action":"run_command","value":"/trigger TpBookTrigger set 1"}},{"text":"\\n","color":"reset"},{"text":"2. Parkour","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger TpBookTrigger set 2"}},{"text":"\\n","color":"reset"},{"text":"3. Tutorial","color":"dark_purple","clickEvent":{"action":"run_command","value":"/trigger TpBookTrigger set 3"}},{"text":"\\n","color":"reset"},{"text":"\\n\\n\\n\\n ","color":"reset"}]']} 1


#triggers 
scoreboard players enable @s TpBookTrigger
execute if score @s TpBookTrigger matches 1 run tp @s 464.5 139 461.5 180 -1
execute if score @s TpBookTrigger matches 2 run tp @s 507.5 130.9375 463.5 -90 0
execute if score @s TpBookTrigger matches 3 run tp @s 516.8 131.0 442.5 -90 -1
#execute if score @s TpBookTrigger matches 4
execute if score @s TpBookTrigger matches 1..3 as @s run playsound minecraft:ui.toast.out master @s ~ ~ ~ 200
execute if score @s TpBookTrigger matches 1.. run scoreboard players reset @s TpBookTrigger