scoreboard players add item Tmr 1
execute if score item Tmr = itemTmr Settings if score itemMirror Settings matches 0 as @a[scores={Player=1..2}] run function items:give/full_inventory_rand
execute if score item Tmr = itemTmr Settings if score itemMirror Settings matches 1 run tag @a[scores={Player=1..2}] add doins
execute if score item Tmr = itemTmr Settings if score itemMirror Settings matches 1 run function items:give/full_inventory_mirror
execute if score item Tmr = itemTmr Settings run tellraw @a[scores={Player=1..}] [{"color":"yellow","text":"所有人都得到了新物品！"}]
execute if score item Tmr = itemTmr Settings as @a[scores={Player=1..}] at @s run playsound entity.arrow.hit_player master @s ~ ~ ~
execute if score item Tmr = itemTmr Settings run scoreboard players reset item Tmr