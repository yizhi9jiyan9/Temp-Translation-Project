#setup 
scoreboard players set #removed item_chest 0

#search
execute if score #removed item_chest matches 0 store result score #lst item_chest run data get storage item armor[0]
execute if score #removed item_chest matches 0 store success score #removed item_chest if score #lst item_chest = #num item_chest run data remove storage item armor[0]
execute if score #removed item_chest matches 0 store result score #lst item_chest run data get storage item armor[1]
execute if score #removed item_chest matches 0 store success score #removed item_chest if score #lst item_chest = #num item_chest run data remove storage item armor[1]
execute if score #removed item_chest matches 0 store result score #lst item_chest run data get storage item armor[2]
execute if score #removed item_chest matches 0 store success score #removed item_chest if score #lst item_chest = #num item_chest run data remove storage item armor[2]
execute if score #removed item_chest matches 0 store result score #lst item_chest run data get storage item armor[3]
execute if score #removed item_chest matches 0 store success score #removed item_chest if score #lst item_chest = #num item_chest run data remove storage item armor[3]
execute if score #removed item_chest matches 0 store result score #lst item_chest run data get storage item armor[4]
execute if score #removed item_chest matches 0 store success score #removed item_chest if score #lst item_chest = #num item_chest run data remove storage item armor[4]
execute if score #removed item_chest matches 0 store result score #lst item_chest run data get storage item armor[5]
execute if score #removed item_chest matches 0 store success score #removed item_chest if score #lst item_chest = #num item_chest run data remove storage item armor[5]
execute if score #removed item_chest matches 0 store result score #lst item_chest run data get storage item armor[6]
execute if score #removed item_chest matches 0 store success score #removed item_chest if score #lst item_chest = #num item_chest run data remove storage item armor[6]
execute if score #removed item_chest matches 0 store result score #lst item_chest run data get storage item armor[7]
execute if score #removed item_chest matches 0 store success score #removed item_chest if score #lst item_chest = #num item_chest run data remove storage item armor[7]
execute if score #removed item_chest matches 0 store result score #lst item_chest run data get storage item armor[8]
execute if score #removed item_chest matches 0 store success score #removed item_chest if score #lst item_chest = #num item_chest run data remove storage item armor[8]
execute if score #removed item_chest matches 0 store result score #lst item_chest run data get storage item armor[9]
execute if score #removed item_chest matches 0 store success score #removed item_chest if score #lst item_chest = #num item_chest run data remove storage item armor[9]
execute if score #removed item_chest matches 0 store result score #lst item_chest run data get storage item armor[10]
execute if score #removed item_chest matches 0 store success score #removed item_chest if score #lst item_chest = #num item_chest run data remove storage item armor[10]
execute if score #removed item_chest matches 0 store result score #lst item_chest run data get storage item armor[11]
execute if score #removed item_chest matches 0 store success score #removed item_chest if score #lst item_chest = #num item_chest run data remove storage item armor[11]
execute if score #removed item_chest matches 0 store result score #lst item_chest run data get storage item armor[12]
execute if score #removed item_chest matches 0 store success score #removed item_chest if score #lst item_chest = #num item_chest run data remove storage item armor[12]
execute if score #removed item_chest matches 0 store result score #lst item_chest run data get storage item armor[13]
execute if score #removed item_chest matches 0 store success score #removed item_chest if score #lst item_chest = #num item_chest run data remove storage item armor[13]
execute if score #removed item_chest matches 0 store result score #lst item_chest run data get storage item armor[14]
execute if score #removed item_chest matches 0 store success score #removed item_chest if score #lst item_chest = #num item_chest run data remove storage item armor[14]
execute if score #removed item_chest matches 0 store result score #lst item_chest run data get storage item armor[15]
execute if score #removed item_chest matches 0 store success score #removed item_chest if score #lst item_chest = #num item_chest run data remove storage item armor[15]
execute if score #removed item_chest matches 0 store result score #lst item_chest run data get storage item armor[16]
execute if score #removed item_chest matches 0 store success score #removed item_chest if score #lst item_chest = #num item_chest run data remove storage item armor[16]
execute if score #removed item_chest matches 0 store result score #lst item_chest run data get storage item armor[17]
execute if score #removed item_chest matches 0 store success score #removed item_chest if score #lst item_chest = #num item_chest run data remove storage item armor[17]

execute if score #removed item_chest matches 1 run scoreboard players remove armorLength ItemList 1

#if there is nothing...
#execute if score armorLength ItemList matches ..0 run function item_chest:gui/armor/clicks/remove_fail