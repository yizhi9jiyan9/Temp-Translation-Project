execute if score fullRandom Tmr matches 1.. run scoreboard players remove fullRandom Tmr 1
execute if score fullRandom Tmr matches 1 run tp @e[type=villager,tag=full_rand] 458.3 137 458.5

execute if score fullRandom Tmr matches 1.. if block 458 140 458 lever[powered=false] run setblock 458 140 458 lever[powered=true,facing=east] replace
execute unless score fullRandom Tmr matches 1.. if block 458 140 458 lever[powered=false] run function lobby:settings/board/full_random/stop