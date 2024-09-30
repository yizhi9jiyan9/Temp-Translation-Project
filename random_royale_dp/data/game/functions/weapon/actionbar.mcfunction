scoreboard players operation #store WeaponRoyale = @s FFAScores 
scoreboard players add #store WeaponRoyale 1 

execute unless score #store WeaponRoyale >= scoreToWin Settings run function game:weapon/actionbar_item

execute if score #store WeaponRoyale >= scoreToWin Settings run title @s actionbar ["",{"text":"Next Item:","color":"dark_aqua"},{"text":" You Win!","color":"gold","bold":true}]