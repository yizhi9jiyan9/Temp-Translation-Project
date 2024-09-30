execute unless score gamemode SettingsLob matches 0 run playsound minecraft:ui.button.click master @s 466.5 140 456.5 0.4
execute if score gamemode SettingsLob matches 0 run function lobby:settings/gamemodes/dm_team 
function lobby:settings/cooldown

#reset old
tp @e[tag=dm_ffa] 0 -100 0
kill @e[tag=dm_ffa]

#update the armor srtands / villager 
summon armor_stand 466.25 140 456.25 {Team:"GreenAlt",Tags:["dm_team","sett"],Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:50176}}},{id:"leather_leggings",Count:1b,tag:{display:{color:5164110}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:9292941}}},{id:"player_head",Count:1b,tag:{SkullOwner:"Technic_Void"}}],HandItems:[{id:"iron_axe",Count:1b},{}],DisabledSlots:4144959,Pose:{Head:[0f,0f,350f],LeftLeg:[0f,0f,350f],RightLeg:[0f,0f,9f],LeftArm:[0f,0f,344f],RightArm:[0f,97f,125f]}}
summon armor_stand 466.75 139.8 456.5 {Team:"GreenAlt",Tags:["dm_team","sett"],Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:50176}}},{id:"leather_leggings",Count:1b,tag:{display:{color:5164110}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:9292941}}},{id:"player_head",Count:1b,tag:{SkullOwner:"Icingg"}}],HandItems:[{},{id:"iron_sword",Count:1b}],CustomName:'{"text":"Team Deathmatch","color":"green","bold":true}',CustomNameVisible:1b,DisabledSlots:4144959,Pose:{LeftLeg:[300f,0f,0f],RightLeg:[34f,0f,0f],LeftArm:[269f,349f,0f],RightArm:[44f,354f,0f]}}
summon villager 0 0 0 {NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["sett","dm_team","1"],VillagerData:{profession:"minecraft:nitwit"},ActiveEffects:[{Id:14,Amplifier:0b,Duration:100,ShowParticles:0b}]}
summon villager 0 0 0 {NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["sett","dm_team","2"],VillagerData:{profession:"minecraft:nitwit"},ActiveEffects:[{Id:14,Amplifier:0b,Duration:100,ShowParticles:0b}]}
schedule function lobby:settings/gamemodes/team_switch/dm/to_team_tp 2t

#update sign 
setblock 466 139 457 air replace
setblock 466 139 457 minecraft:dark_oak_wall_sign[facing=south]{front_text:{messages:['{"text":"","clickEvent":{"action":"run_command","value":"execute if score settings Tmr matches ..0 run function lobby:settings/gamemodes/team_switch/dm/to_ffa"}}','{"text":"Switch to","color":"aqua"}','{"text":"FFA Deathmatch","color":"blue"}','{"text":""}']}} replace