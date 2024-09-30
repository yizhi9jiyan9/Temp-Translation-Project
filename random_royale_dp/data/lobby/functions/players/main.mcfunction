#players joining 
execute as @s[scores={Join=0}] run function lobby:players/join/join

#Code for LOBBY players 
execute as @s[scores={Player=0}] run function lobby:players/lobby


#Code for SPECTATOR players
execute if score main_gs Stats matches 0..1 as @s[scores={Player=3}] run function lobby:players/spec/lobby_spec
execute if score main_gs Stats matches 2 if score reloading Stats matches 0 as @s[scores={Player=3}] run function lobby:players/spec/lobby_spec
execute if score main_gs Stats matches 2 if score reloading Stats matches 1 as @s[scores={Player=3}] run function lobby:players/spec/game_spec
execute if score main_gs Stats matches 3 as @s[scores={Player=3}] run function lobby:players/spec/game_spec
kill @e[type=item,nbt={Item:{tag:{lobby:1}}}]
kill @e[type=item,nbt={Item:{tag:{team:1}}}]
kill @e[type=item,nbt={Item:{tag:{lobby:7}}}]


#code for PLAYER players 
#this one and below will be empty (most likely) as they only exist during games


#code for DEAD players

