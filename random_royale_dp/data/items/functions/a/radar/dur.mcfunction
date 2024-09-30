#check if used 
execute if score @s[predicate=items:a_hold] ICarrot_stick matches 1.. run function items:a/radar/click

#give back
execute if score @s ItemAtmr matches 1.. run scoreboard players remove @s ItemAtmr 1
execute if score @s ItemAtmr matches 295 as @a[scores={Player=1..2}] run function items:a/radar/scan
execute if score @s ItemAtmr matches 290 as @a[scores={Player=2..4}] run function items:a/radar/scan
execute if score @s ItemAtmr matches 285 as @a[scores={Player=4..6}] run function items:a/radar/scan
execute if score @s ItemAtmr matches 280 as @a[scores={Player=6..8}] run function items:a/radar/scan
execute if score @s ItemAtmr matches 275 as @a[scores={Player=8..10}] run function items:a/radar/scan
execute if score @s ItemAtmr matches 270 as @a[scores={Player=10..12}] run function items:a/radar/scan
execute if score @s ItemAtmr matches 265 as @a[scores={Player=12..14}] run function items:a/radar/scan
execute if score @s ItemAtmr matches 260 as @a[scores={Player=14..16}] run function items:a/radar/scan
execute if score @s ItemAtmr matches 255 as @a[scores={Player=16..18}] run function items:a/radar/scan
execute if score @s ItemAtmr matches 250 as @a[scores={Player=18..20}] run function items:a/radar/scan


execute if score @s ItemAtmr matches 1 run function items:a/update