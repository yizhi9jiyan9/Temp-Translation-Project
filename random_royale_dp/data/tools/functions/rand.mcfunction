##Make sure to set max. ex: scoreboard players set max Rand 10
summon marker 0 0 0 {Tags:["rand"]}
execute store result score op Rand run data get entity @e[type=marker,tag=rand,limit=1] UUID[0]
scoreboard players operation op Rand %= max Rand
kill @e[type=marker,tag=rand]