#setup 
scoreboard players set #removed item_chest 0

#search
execute if score #removed item_chest matches 0 store result score #lst item_chest run data get storage item main[0]
execute if score #removed item_chest matches 0 store success score #removed item_chest if score #lst item_chest = #num item_chest run data remove storage item main[0]
execute if score #removed item_chest matches 0 store result score #lst item_chest run data get storage item main[1]
execute if score #removed item_chest matches 0 store success score #removed item_chest if score #lst item_chest = #num item_chest run data remove storage item main[1]
execute if score #removed item_chest matches 0 store result score #lst item_chest run data get storage item main[2]
execute if score #removed item_chest matches 0 store success score #removed item_chest if score #lst item_chest = #num item_chest run data remove storage item main[2]
execute if score #removed item_chest matches 0 store result score #lst item_chest run data get storage item main[3]
execute if score #removed item_chest matches 0 store success score #removed item_chest if score #lst item_chest = #num item_chest run data remove storage item main[3]
execute if score #removed item_chest matches 0 store result score #lst item_chest run data get storage item main[4]
execute if score #removed item_chest matches 0 store success score #removed item_chest if score #lst item_chest = #num item_chest run data remove storage item main[4]
execute if score #removed item_chest matches 0 store result score #lst item_chest run data get storage item main[5]
execute if score #removed item_chest matches 0 store success score #removed item_chest if score #lst item_chest = #num item_chest run data remove storage item main[5]
execute if score #removed item_chest matches 0 store result score #lst item_chest run data get storage item main[6]
execute if score #removed item_chest matches 0 store success score #removed item_chest if score #lst item_chest = #num item_chest run data remove storage item main[6]
execute if score #removed item_chest matches 0 store result score #lst item_chest run data get storage item main[7]
execute if score #removed item_chest matches 0 store success score #removed item_chest if score #lst item_chest = #num item_chest run data remove storage item main[7]
execute if score #removed item_chest matches 0 store result score #lst item_chest run data get storage item main[8]
execute if score #removed item_chest matches 0 store success score #removed item_chest if score #lst item_chest = #num item_chest run data remove storage item main[8]
execute if score #removed item_chest matches 0 store result score #lst item_chest run data get storage item main[9]
execute if score #removed item_chest matches 0 store success score #removed item_chest if score #lst item_chest = #num item_chest run data remove storage item main[9]
execute if score #removed item_chest matches 0 store result score #lst item_chest run data get storage item main[10]
execute if score #removed item_chest matches 0 store success score #removed item_chest if score #lst item_chest = #num item_chest run data remove storage item main[10]
execute if score #removed item_chest matches 0 store result score #lst item_chest run data get storage item main[11]
execute if score #removed item_chest matches 0 store success score #removed item_chest if score #lst item_chest = #num item_chest run data remove storage item main[11]
execute if score #removed item_chest matches 0 store result score #lst item_chest run data get storage item main[12]
execute if score #removed item_chest matches 0 store success score #removed item_chest if score #lst item_chest = #num item_chest run data remove storage item main[12]
execute if score #removed item_chest matches 0 store result score #lst item_chest run data get storage item main[13]
execute if score #removed item_chest matches 0 store success score #removed item_chest if score #lst item_chest = #num item_chest run data remove storage item main[13]
execute if score #removed item_chest matches 0 store result score #lst item_chest run data get storage item main[14]
execute if score #removed item_chest matches 0 store success score #removed item_chest if score #lst item_chest = #num item_chest run data remove storage item main[14]
execute if score #removed item_chest matches 0 store result score #lst item_chest run data get storage item main[15]
execute if score #removed item_chest matches 0 store success score #removed item_chest if score #lst item_chest = #num item_chest run data remove storage item main[15]
execute if score #removed item_chest matches 0 store result score #lst item_chest run data get storage item main[16]
execute if score #removed item_chest matches 0 store success score #removed item_chest if score #lst item_chest = #num item_chest run data remove storage item main[16]
execute if score #removed item_chest matches 0 store result score #lst item_chest run data get storage item main[17]
execute if score #removed item_chest matches 0 store success score #removed item_chest if score #lst item_chest = #num item_chest run data remove storage item main[17]

execute if score #removed item_chest matches 1 run scoreboard players remove mainLength ItemList 1

#if there is nothing...
#execute if score mainLength ItemList matches ..0 run function item_chest:gui/main/clicks/remove_fail