#setup 
scoreboard players set #removed item_chest 0

#search
execute if score #removed item_chest matches 0 store result score #lst item_chest run data get storage item second[0]
execute if score #removed item_chest matches 0 store success score #removed item_chest if score #lst item_chest = #num item_chest run data remove storage item second[0]
execute if score #removed item_chest matches 0 store result score #lst item_chest run data get storage item second[1]
execute if score #removed item_chest matches 0 store success score #removed item_chest if score #lst item_chest = #num item_chest run data remove storage item second[1]
execute if score #removed item_chest matches 0 store result score #lst item_chest run data get storage item second[2]
execute if score #removed item_chest matches 0 store success score #removed item_chest if score #lst item_chest = #num item_chest run data remove storage item second[2]
execute if score #removed item_chest matches 0 store result score #lst item_chest run data get storage item second[3]
execute if score #removed item_chest matches 0 store success score #removed item_chest if score #lst item_chest = #num item_chest run data remove storage item second[3]
execute if score #removed item_chest matches 0 store result score #lst item_chest run data get storage item second[4]
execute if score #removed item_chest matches 0 store success score #removed item_chest if score #lst item_chest = #num item_chest run data remove storage item second[4]
execute if score #removed item_chest matches 0 store result score #lst item_chest run data get storage item second[5]
execute if score #removed item_chest matches 0 store success score #removed item_chest if score #lst item_chest = #num item_chest run data remove storage item second[5]
execute if score #removed item_chest matches 0 store result score #lst item_chest run data get storage item second[6]
execute if score #removed item_chest matches 0 store success score #removed item_chest if score #lst item_chest = #num item_chest run data remove storage item second[6]
execute if score #removed item_chest matches 0 store result score #lst item_chest run data get storage item second[7]
execute if score #removed item_chest matches 0 store success score #removed item_chest if score #lst item_chest = #num item_chest run data remove storage item second[7]
execute if score #removed item_chest matches 0 store result score #lst item_chest run data get storage item second[8]
execute if score #removed item_chest matches 0 store success score #removed item_chest if score #lst item_chest = #num item_chest run data remove storage item second[8]
execute if score #removed item_chest matches 0 store result score #lst item_chest run data get storage item second[9]
execute if score #removed item_chest matches 0 store success score #removed item_chest if score #lst item_chest = #num item_chest run data remove storage item second[9]
execute if score #removed item_chest matches 0 store result score #lst item_chest run data get storage item second[10]
execute if score #removed item_chest matches 0 store success score #removed item_chest if score #lst item_chest = #num item_chest run data remove storage item second[10]
execute if score #removed item_chest matches 0 store result score #lst item_chest run data get storage item second[11]
execute if score #removed item_chest matches 0 store success score #removed item_chest if score #lst item_chest = #num item_chest run data remove storage item second[11]
execute if score #removed item_chest matches 0 store result score #lst item_chest run data get storage item second[12]
execute if score #removed item_chest matches 0 store success score #removed item_chest if score #lst item_chest = #num item_chest run data remove storage item second[12]
execute if score #removed item_chest matches 0 store result score #lst item_chest run data get storage item second[13]
execute if score #removed item_chest matches 0 store success score #removed item_chest if score #lst item_chest = #num item_chest run data remove storage item second[13]
execute if score #removed item_chest matches 0 store result score #lst item_chest run data get storage item second[14]
execute if score #removed item_chest matches 0 store success score #removed item_chest if score #lst item_chest = #num item_chest run data remove storage item second[14]
execute if score #removed item_chest matches 0 store result score #lst item_chest run data get storage item second[15]
execute if score #removed item_chest matches 0 store success score #removed item_chest if score #lst item_chest = #num item_chest run data remove storage item second[15]
execute if score #removed item_chest matches 0 store result score #lst item_chest run data get storage item second[16]
execute if score #removed item_chest matches 0 store success score #removed item_chest if score #lst item_chest = #num item_chest run data remove storage item second[16]
execute if score #removed item_chest matches 0 store result score #lst item_chest run data get storage item second[17]
execute if score #removed item_chest matches 0 store success score #removed item_chest if score #lst item_chest = #num item_chest run data remove storage item second[17]

execute if score #removed item_chest matches 1 run scoreboard players remove secondLength ItemList 1

#if there is nothing...
#execute if score secondLength ItemList matches ..0 run function item_chest:gui/second/clicks/remove_fail