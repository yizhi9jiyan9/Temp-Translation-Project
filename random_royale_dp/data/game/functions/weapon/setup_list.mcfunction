#get a random index (max = length-1 of base list)
scoreboard players operation max Rand = #base_list_length WeaponRoyale
function tools:rand

#add the index to the new list 
execute if score op Rand matches 0 run data modify storage weapon new append from storage weapon base[0]
execute if score op Rand matches 1 run data modify storage weapon new append from storage weapon base[1]
execute if score op Rand matches 2 run data modify storage weapon new append from storage weapon base[2]
execute if score op Rand matches 3 run data modify storage weapon new append from storage weapon base[3]
execute if score op Rand matches 4 run data modify storage weapon new append from storage weapon base[4]
execute if score op Rand matches 5 run data modify storage weapon new append from storage weapon base[5]
execute if score op Rand matches 6 run data modify storage weapon new append from storage weapon base[6]
execute if score op Rand matches 7 run data modify storage weapon new append from storage weapon base[7]
execute if score op Rand matches 8 run data modify storage weapon new append from storage weapon base[8]
execute if score op Rand matches 9 run data modify storage weapon new append from storage weapon base[9]
execute if score op Rand matches 10 run data modify storage weapon new append from storage weapon base[10]
execute if score op Rand matches 11 run data modify storage weapon new append from storage weapon base[11]
execute if score op Rand matches 12 run data modify storage weapon new append from storage weapon base[12]
execute if score op Rand matches 13 run data modify storage weapon new append from storage weapon base[13]
execute if score op Rand matches 14 run data modify storage weapon new append from storage weapon base[14]
execute if score op Rand matches 15 run data modify storage weapon new append from storage weapon base[15]
execute if score op Rand matches 16 run data modify storage weapon new append from storage weapon base[16]
execute if score op Rand matches 17 run data modify storage weapon new append from storage weapon base[17]

#remove the index from the base list
execute if score op Rand matches 0 run data remove storage weapon base[0]
execute if score op Rand matches 1 run data remove storage weapon base[1]
execute if score op Rand matches 2 run data remove storage weapon base[2]
execute if score op Rand matches 3 run data remove storage weapon base[3]
execute if score op Rand matches 4 run data remove storage weapon base[4]
execute if score op Rand matches 5 run data remove storage weapon base[5]
execute if score op Rand matches 6 run data remove storage weapon base[6]
execute if score op Rand matches 7 run data remove storage weapon base[7]
execute if score op Rand matches 8 run data remove storage weapon base[8]
execute if score op Rand matches 9 run data remove storage weapon base[9]
execute if score op Rand matches 10 run data remove storage weapon base[10]
execute if score op Rand matches 11 run data remove storage weapon base[11]
execute if score op Rand matches 12 run data remove storage weapon base[12]
execute if score op Rand matches 13 run data remove storage weapon base[13]
execute if score op Rand matches 14 run data remove storage weapon base[14]
execute if score op Rand matches 15 run data remove storage weapon base[15]
execute if score op Rand matches 16 run data remove storage weapon base[16]
execute if score op Rand matches 17 run data remove storage weapon base[17]

#remove 1 from the max index number and add 1 to the length of new list number
scoreboard players remove #base_list_length WeaponRoyale 1
scoreboard players add #new_list_length WeaponRoyale 1

#check if keep going 
execute if score #new_list_length WeaponRoyale < scoreToWin Settings run function game:weapon/setup_list
