team leave @s

#armor stand
kill @e[type=armor_stand,tag=parkour,tag=player,limit=1]
kill @e[type=armor_stand,tag=parkour,tag=time,limit=1]
summon armor_stand 510.5 131.0 465.5 {Rotation:[108f,20f],Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:13236735}}},{id:"leather_leggings",Count:1b,tag:{display:{color:9432055}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:57855}}},{id:"player_head",Count:1b,tag:{SkullOwner:"MHF_Question"}}],HandItems:[{},{}],CustomName:'{"text":"N/A","color":"gold"}',CustomNameVisible:1b,Tags:["parkour","player"],DisabledSlots:4144959,Pose:{Head:[360f,18f,0f],LeftLeg:[319f,348f,0f],RightLeg:[38f,358f,0f],LeftArm:[308f,0f,0f],RightArm:[38f,0f,0f]}}
summon armor_stand 510.5 132.75 465.5 {CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["parkour","time"],CustomName:'[{"text":"Best Time: ","color":"dark_aqua","italic":false},{"text":"00:00.00","color":"aqua","italic":false}]'}

#set player armorstand
tag @s add v

loot replace entity @e[type=armor_stand,tag=parkour,tag=player] armor.head 1 loot lobby:head
data merge block 0 0 0 {front_text:{messages:['{"selector":"@a[tag=v,limit=1]","color":"gold"}','{"text":""}','{"text":""}','{"text":""}']}}
data modify entity @e[type=armor_stand,tag=parkour,tag=player,limit=1] CustomName set from block 0 0 0 front_text.messages[0]

tag @s remove v

#set time
execute if score #tick Parkour matches 10.. run data merge block 0 0 0 {front_text:{messages:['["",{"text":"Best Time:","color":"dark_aqua"},{"text":" ","color":"aqua"},{"score":{"name":"#min","objective":"Parkour"},"color":"aqua"},{"text":":","color":"aqua"},{"score":{"name":"#sec","objective":"Parkour"},"color":"aqua"},{"text":".","color":"aqua"},{"score":{"name":"#tick","objective":"Parkour"},"color":"aqua"}]','{"text":""}','{"text":""}','{"text":""}']}}
execute unless score #tick Parkour matches 10.. run data merge block 0 0 0 {front_text:{messages:['["",{"text":"Best Time:","color":"dark_aqua"},{"text":" ","color":"aqua"},{"score":{"name":"#min","objective":"Parkour"},"color":"aqua"},{"text":":","color":"aqua"},{"score":{"name":"#sec","objective":"Parkour"},"color":"aqua"},{"text":".0","color":"aqua"},{"score":{"name":"#tick","objective":"Parkour"},"color":"aqua"}]','{"text":""}','{"text":""}','{"text":""}']}}
data modify entity @e[type=armor_stand,tag=parkour,tag=time,limit=1] CustomName set from block 0 0 0 front_text.messages[0]

#tellraw 
tellraw @a [{"text":"\n[Parkour] ","color":"dark_aqua"},{"selector":"@s","color":"gold"},{"text":" set a new high score!","color":"aqua"}]
execute as @s run playsound ui.toast.challenge_complete master @s ~ ~ ~

execute if score @s Parkour matches ..458 run tellraw @s ["",{"text":"[Parkour]","color":"dark_aqua"},{"text":" You have also beat the current known world record! Join our discord with video proof to get a special in game role.","color":"aqua"},{"text":" ","color":"gray"},{"text":"(Click here for link)","color":"gray","clickEvent":{"action":"open_url","value":"https://discord.gg/RcY3eKWptA"}}]

scoreboard players operation HS Parkour = @s Parkour


execute if score teams SettingsLob matches 0 run function lobby:players/lobby_teams
execute if score teams SettingsLob matches 1 run function lobby:players/color_teams