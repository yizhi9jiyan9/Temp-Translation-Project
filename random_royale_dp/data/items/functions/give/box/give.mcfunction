tag @a[scores={Player=1,BoxOpen=1..},distance=..5,sort=nearest,limit=1] add v


execute if entity @s[tag=m] as @a[tag=v] run function items:m/reset
execute if entity @s[tag=s] as @a[tag=v] run function items:s/reset
execute if entity @s[tag=a] as @a[tag=v] run function items:a/reset

execute if entity @s[tag=m] run scoreboard players operation @a[tag=v] ItemM = @s Box
execute if entity @s[tag=s] run scoreboard players operation @a[tag=v] ItemS = @s Box
execute if entity @s[tag=a] run scoreboard players operation @a[tag=v] ItemA = @s Box

execute if entity @s[tag=m] as @a[tag=v] run function items:m/set
execute if entity @s[tag=s] as @a[tag=v] run function items:s/set
execute if entity @s[tag=a] as @a[tag=v] run function items:a/set

function items:give/box/reset_1
tag @a[tag=v] remove v