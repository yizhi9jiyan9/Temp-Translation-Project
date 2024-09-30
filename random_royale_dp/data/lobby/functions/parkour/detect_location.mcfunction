##if in a location 
scoreboard players operation #store ParkourLoc = @s ParkourLoc

# 16 - middle of bamboo
execute unless score #store ParkourLoc matches 16.. if predicate lobby:parkour/5 run scoreboard players add @s ParkourLoc 16 
execute if score #store ParkourLoc matches 16.. run scoreboard players remove #store ParkourLoc 16 


# 8 - end of gate
execute unless score #store ParkourLoc matches 8.. if predicate lobby:parkour/4 run scoreboard players add @s ParkourLoc 8 
execute if score #store ParkourLoc matches 8.. run scoreboard players remove #store ParkourLoc 8 

# 4 - cherry blossom
execute unless score #store ParkourLoc matches 4.. if predicate lobby:parkour/3 run scoreboard players add @s ParkourLoc 4 
execute if score #store ParkourLoc matches 4.. run scoreboard players remove #store ParkourLoc 4 

# 2 - trapdoor
execute unless score #store ParkourLoc matches 2.. if predicate lobby:parkour/2 run scoreboard players add @s ParkourLoc 2 
execute if score #store ParkourLoc matches 2.. run scoreboard players remove #store ParkourLoc 2 

# 1 - inside jump place
execute unless score #store ParkourLoc matches 1.. if predicate lobby:parkour/1 run scoreboard players add @s ParkourLoc 1 
execute if score #store ParkourLoc matches 1.. run scoreboard players remove #store ParkourLoc 1










