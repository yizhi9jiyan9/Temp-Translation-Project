#reset past item
function items:m/reset

#set score 
execute if score @s FFAScores matches 0 store result score #store WeaponRoyale run data get storage weapon new[0]
execute if score @s FFAScores matches 1 store result score #store WeaponRoyale run data get storage weapon new[1]
execute if score @s FFAScores matches 2 store result score #store WeaponRoyale run data get storage weapon new[2]
execute if score @s FFAScores matches 3 store result score #store WeaponRoyale run data get storage weapon new[3]
execute if score @s FFAScores matches 4 store result score #store WeaponRoyale run data get storage weapon new[4]
execute if score @s FFAScores matches 5 store result score #store WeaponRoyale run data get storage weapon new[5]
execute if score @s FFAScores matches 6 store result score #store WeaponRoyale run data get storage weapon new[6]
execute if score @s FFAScores matches 7 store result score #store WeaponRoyale run data get storage weapon new[7]
execute if score @s FFAScores matches 8 store result score #store WeaponRoyale run data get storage weapon new[8]
execute if score @s FFAScores matches 9 store result score #store WeaponRoyale run data get storage weapon new[9]
execute if score @s FFAScores matches 10 store result score #store WeaponRoyale run data get storage weapon new[10]
execute if score @s FFAScores matches 11 store result score #store WeaponRoyale run data get storage weapon new[11]
execute if score @s FFAScores matches 12 store result score #store WeaponRoyale run data get storage weapon new[12]
execute if score @s FFAScores matches 13 store result score #store WeaponRoyale run data get storage weapon new[13]
execute if score @s FFAScores matches 14 store result score #store WeaponRoyale run data get storage weapon new[14]
execute if score @s FFAScores matches 15 store result score #store WeaponRoyale run data get storage weapon new[15]
scoreboard players operation @s ItemM = #store WeaponRoyale

#set to new
function items:m/set


#title 
scoreboard players operation #store WeaponRoyale = @s FFAScores 
scoreboard players add #store WeaponRoyale 1 
execute if score #store WeaponRoyale = scoreToWin Settings run title @a subtitle ["",{"selector":"@s","color":"gold"},{"text":" is 1 kill away from winning!","color":"aqua"}]
execute if score #store WeaponRoyale = scoreToWin Settings run title @a title " "


