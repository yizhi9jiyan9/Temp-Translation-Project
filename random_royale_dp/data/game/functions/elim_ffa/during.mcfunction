#duel tnt secret setting
execute if score specialSettings Settings matches 2 run effect give @a[scores={Player=1}] resistance infinite 9 true

#detect wins
execute store result score #store Lives if entity @a[scores={Lives=1..}]
execute if score #store Lives matches 1 as @a[scores={Player=1,Lives=1..}] run tag @s add winner

execute if entity @a[scores={Player=1},tag=winner] run function game:gen/end_tmr/start
execute unless entity @a[scores={Lives=1..}] run function game:gen/end_tmr/start
