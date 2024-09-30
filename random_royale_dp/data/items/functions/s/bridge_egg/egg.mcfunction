summon marker ~ ~ ~ {Tags:["bridge_egg","setup","v"]}
scoreboard players set @e[type=marker,tag=bridge_egg,tag=v] ItemS1 3 
tag @e[type=marker,tag=bridge_egg,tag=v] remove v

kill @s[predicate=!game:game]
kill @s[predicate=game:low_die]



