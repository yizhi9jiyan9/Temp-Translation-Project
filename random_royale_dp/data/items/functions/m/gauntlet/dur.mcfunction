#ItemMtmr = timer for recharge
#ItemM1 = if rising or falling (0 - neither, 1 - rising, 2 - falling)

#check if used 
execute if score @s[predicate=items:m_hold] ICarrot_stick matches 1.. unless score @s ItemMtmr matches 1.. run function items:m/gauntlet/groundpound_start
execute if score @s[predicate=items:m_hold] ICarrot_stick matches 1.. run scoreboard players reset @s ICarrot_stick

#while using
execute if score @s ItemM1 matches 1 if score @s ItemMtmr matches ..375 run effect give @s minecraft:levitation 1 130 true
execute if score @s ItemM1 matches 1 if score @s ItemMtmr matches ..375 run scoreboard players set @s ItemM1 2
execute if score @s ItemM1 matches 2 if entity @s[nbt={OnGround:1b}] at @s run function items:m/gauntlet/land


#give back
execute if score @s ItemMtmr matches 0.. run scoreboard players remove @s ItemMtmr 1
execute if score @s ItemMtmr matches 15.. run function items:m/update
