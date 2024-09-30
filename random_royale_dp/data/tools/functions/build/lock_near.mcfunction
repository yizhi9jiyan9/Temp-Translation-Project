execute as @e[type=armor_stand,distance=..10] run data merge entity @s {Invulnerable:1b,DisabledSlots:4144959}
execute as @e[type=item_frame,distance=..10] run data merge entity @s {Invulnerable:1b,Fixed:1b}
execute as @e[type=glow_item_frame,distance=..10] run data merge entity @s {Invulnerable:1b,Fixed:1b}
execute as @e[type=painting,distance=..10] run data merge entity @s {Invulnerable:1b}

effect give @e[type=armor_stand,distance=..10] glowing 5 0 true
effect give @e[type=item_frame,distance=..10] glowing 5 0 true
effect give @e[type=glow_item_frame,distance=..10] glowing 5 0 true
effect give @e[type=painting,distance=..10] glowing 5 0 true