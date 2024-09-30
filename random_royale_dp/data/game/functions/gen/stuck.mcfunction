##this is so the player can respawn if they are out of combat for too long and requires a ``scoreboard players reset @s CrouchTmr`` in every damage detection / hit place
##This can be edited so 1) ALl damage and hit detection is here not in the kill place 2) Detect if player has not moved in a while

#add timer.  
scoreboard players add @s StuckTmr 1

#if you reach time where crouching can happen
execute if score @s StuckTmr matches 1000 run scoreboard players remove @s StuckCount 1
execute if score @s StuckTmr matches 1000 if score @s StuckCount matches 0.. run tellraw @s [{"text":"[TIP] If you are ever stuck, hold crouch for 5 seconds to respawn.","color":"gray"}]
execute if score @s StuckTmr matches 1000 if score @s StuckCount matches 2 run tellraw @s [{"text":"This tip will play ","color":"gray"},{"score":{"name":"@s","objective":"StuckCount"},"color":"gold"},{"text":" more times","color":"gray"}]
execute if score @s StuckTmr matches 1000 if score @s StuckCount matches 1 run tellraw @s [{"text":"This tip will play ","color":"gray"},{"score":{"name":"@s","objective":"StuckCount"},"color":"gold"},{"text":" more time","color":"gray"}]
execute if score @s StuckTmr matches 1000 run scoreboard players reset @s StuckTmr

#crouch tmr
execute if score @s CrouchTmr matches 40.. unless score @s Crouch matches 1.. run stopsound @s master block.portal.trigger
execute if score @s CrouchTmr matches 40.. unless score @s Crouch matches 1.. run effect clear @s slowness
execute if score @s CrouchTmr matches 1.. unless score @s Crouch matches 1.. run scoreboard players reset @s CrouchTmr

execute if score @s CrouchTmr matches 40.. if score @s CrouchDamage matches 1.. run effect clear @s slowness
execute if score @s CrouchTmr matches 40.. if score @s CrouchDamage matches 1.. run stopsound @s master block.portal.trigger
execute if score @s CrouchTmr matches 40.. if score @s CrouchDamage matches 1.. run tellraw @s [{"text":"Teleport canceled","color":"gray"}]
execute if score @s CrouchTmr matches 1.. if score @s CrouchDamage matches 1.. run scoreboard players reset @s CrouchTmr 

execute if score @s CrouchTmr matches 40.. if score @s CrouchWalk matches 1.. run effect clear @s slowness
execute if score @s CrouchTmr matches 40.. if score @s CrouchWalk matches 1.. run stopsound @s master block.portal.trigger
execute if score @s CrouchTmr matches 40.. if score @s CrouchWalk matches 1.. run tellraw @s [{"text":"Teleport canceled","color":"gray"}]
execute if score @s CrouchTmr matches 1.. if score @s CrouchWalk matches 1.. run scoreboard players reset @s CrouchTmr 

#main crouch tmr
execute if score @s Crouch matches 1.. run scoreboard players add @s CrouchTmr 1
execute if score @s CrouchTmr matches 40 run tellraw @s [{"text":"You will be teleported to a new location in 4 seconds","color":"gray"}]
execute if score @s CrouchTmr matches 40.. run effect give @s slowness 1 0 true
execute if score @s CrouchTmr matches 60.. run effect give @s slowness 1 1 true
execute if score @s CrouchTmr matches 80.. run effect give @s slowness 1 2 true
execute if score @s CrouchTmr matches 40 at @s run playsound block.portal.trigger master @s ~ ~ ~ 100
execute if score @s CrouchTmr matches 100.. run effect give @s slowness 1 3 true
execute if score @s CrouchTmr matches 120.. run effect give @s slowness 1 4 true
execute if score @s CrouchTmr matches 120.. run function game:gen/spawn/main
execute if score @s CrouchTmr matches 120.. run scoreboard players reset @s CrouchTmr

scoreboard players reset @s Crouch
scoreboard players reset @s CrouchDamage
scoreboard players reset @s CrouchWalk