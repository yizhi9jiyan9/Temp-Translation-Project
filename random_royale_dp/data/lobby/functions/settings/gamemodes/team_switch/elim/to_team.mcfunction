execute unless score gamemode SettingsLob matches 1 run playsound minecraft:ui.button.click master @s 466.5 140 456.5 0.4
execute if score gamemode SettingsLob matches 1 run function lobby:settings/gamemodes/elim_team 
function lobby:settings/cooldown

#reset old
tp @e[tag=elim_ffa] 0 -100 0
kill @e[tag=elim_ffa]

#update the armor srtands / villager 
summon armor_stand 468.95 140 456.25 {Team:"YellowAlt",Tags:["elim_team","sett"],Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:16773632}}},{id:"leather_leggings",Count:1b,tag:{display:{color:16775275}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:16776112}}},{id:"player_head",Count:1b,tag:{SkullOwner:"maskedbanana20"}}],HandItems:[{},{id:"bow",Count:1b}],DisabledSlots:4144959,Pose:{Head:[0f,0f,20f],LeftLeg:[0f,0f,360f],RightLeg:[0f,0f,15f],LeftArm:[264f,8f,0f],RightArm:[264f,307f,0f]}}
summon armor_stand 468.25 140 456.75 {Team:"YellowAlt",Tags:["elim_team","sett"],Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:16773632}}},{id:"leather_leggings",Count:1b,tag:{display:{color:16775275}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:16776112}}},{id:"player_head",Count:1b,tag:{SkullOwner:"masked_mochi"}}],HandItems:[{id:"shield",Count:1b}],CustomName:'{"text":"Team Elimination","color":"yellow","bold":true}',CustomNameVisible:1b,DisabledSlots:4144959,Pose:{Head:[0f,320f,0f],LeftLeg:[0f,24f,350f],LeftArm:[0f,0f,334f],RightArm:[300f,312f,0f]}}
summon villager 0 0 0 {NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["sett","elim_team","1"],VillagerData:{profession:"minecraft:nitwit"},ActiveEffects:[{Id:14,Amplifier:0b,Duration:100,ShowParticles:0b}]}
summon villager 0 0 0 {NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["sett","elim_team","2"],VillagerData:{profession:"minecraft:nitwit"},ActiveEffects:[{Id:14,Amplifier:0b,Duration:100,ShowParticles:0b}]}
schedule function lobby:settings/gamemodes/team_switch/elim/to_team_tp 2t

#update sign 
setblock 468 139 457 air replace
setblock 468 139 457 minecraft:dark_oak_wall_sign[facing=south]{front_text:{messages:['{"text":"","clickEvent":{"action":"run_command","value":"execute if score settings Tmr matches ..0 run function lobby:settings/gamemodes/team_switch/elim/to_ffa"}}','{"text":"Switch to","color":"aqua"}','{"text":"FFA Elimination","color":"red"}','{"text":""}']}} replace