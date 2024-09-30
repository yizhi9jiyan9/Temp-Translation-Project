title @a[scores={Player=1..2}] actionbar " "

#setup the list 
data remove storage weapon new
data remove storage weapon base
data modify storage weapon new set from storage item game.main 
scoreboard players operation #base_list_length WeaponRoyale = mainLength Settings
scoreboard players set #new_list_length WeaponRoyale 0
function game:weapon/setup_list

#give everyone starting item 
function game:weapon/die


scoreboard players reset * FFAScoresDisp
scoreboard players set @a[scores={Player=1}] FFAScores 0
scoreboard players set @a[scores={Player=1}] FFAScoresDisp 0