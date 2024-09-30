## - Spawns in Correct Structures for Each Node -- (Base structure always points N->E->S->W)
#1 Way (has 1 connector, rotates based on if it is n/e/s/w)
execute if entity @s[tag=N,scores={NodeConnect=1}] run function lobby:load/map/create/1/n
execute if entity @s[tag=E,scores={NodeConnect=1}] run function lobby:load/map/create/1/e
execute if entity @s[tag=S,scores={NodeConnect=1}] run function lobby:load/map/create/1/s
execute if entity @s[tag=W,scores={NodeConnect=1}] run function lobby:load/map/create/1/w
#2 way, line (2 connectors in a line, rotates for each)
execute if entity @s[tag=N,tag=S,scores={NodeConnect=2}] run function lobby:load/map/create/2/ns
execute if entity @s[tag=E,tag=W,scores={NodeConnect=2}] run function lobby:load/map/create/2/ew
#2 way, corner (2 connectors perpindicular, rotates for each)
execute if entity @s[tag=N,tag=E,scores={NodeConnect=2}] run function lobby:load/map/create/2/ne
execute if entity @s[tag=N,tag=W,scores={NodeConnect=2}] run function lobby:load/map/create/2/nw
execute if entity @s[tag=S,tag=E,scores={NodeConnect=2}] run function lobby:load/map/create/2/se
execute if entity @s[tag=S,tag=W,scores={NodeConnect=2}] run function lobby:load/map/create/2/sw
#3 way (3 connectors, rotates for each)
execute if entity @s[tag=N,tag=E,tag=S,scores={NodeConnect=3}] run function lobby:load/map/create/3/nes
execute if entity @s[tag=E,tag=S,tag=W,scores={NodeConnect=3}] run function lobby:load/map/create/3/esw
execute if entity @s[tag=S,tag=W,tag=N,scores={NodeConnect=3}] run function lobby:load/map/create/3/swn
execute if entity @s[tag=W,tag=N,tag=E,scores={NodeConnect=3}] run function lobby:load/map/create/3/wne
#4 way (all 4 ways open)
execute if entity @s[tag=N,tag=E,tag=S,tag=W,scores={NodeConnect=4}] run function lobby:load/map/create/4/4

tag @s add built
scoreboard players set load Tmr 0



## -- FOR TESTING ONLY --
#scoreboard players set max Rand 4
#function tools:rand

#entirely to make start look different.
#execute if entity @s[tag=start] run scoreboard players set op Rand -1

#execute if score op Rand matches -1 run fill ~-10 ~ ~-10 ~10 ~ ~10 gold_block replace air
#execute if score op Rand matches 0 run fill ~-10 ~ ~-10 ~10 ~ ~10 stone replace air
#execute if score op Rand matches 1 run fill ~-10 ~ ~-10 ~10 ~ ~10 diorite replace air
#execute if score op Rand matches 2 run fill ~-10 ~ ~-10 ~10 ~ ~10 granite replace air
#execute if score op Rand matches 3 run fill ~-10 ~ ~-10 ~10 ~ ~10 andesite replace air