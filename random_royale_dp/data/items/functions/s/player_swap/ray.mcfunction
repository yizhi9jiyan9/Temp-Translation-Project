execute unless block ^ ^ ^.2 air run function items:s/player_swap/fail
execute unless entity @s[distance=..40] unless score @s ItemStmr matches 1.. run function items:s/player_swap/fail
execute positioned ~-1.25 ~-2.25 ~-1.25 if entity @a[dx=0.5,dy=1.5,dz=0.5,scores={Player=1..},tag=!v] positioned ~1.25 ~2.25 ~1.25 unless score @s ItemStmr matches 1.. run function items:s/player_swap/click

particle dust 0.8 0 1 1 ~ ~ ~ 0 0 0 0 1 normal @a
execute positioned ^ ^ ^.2 unless score @s ItemStmr matches 1.. run function items:s/player_swap/ray