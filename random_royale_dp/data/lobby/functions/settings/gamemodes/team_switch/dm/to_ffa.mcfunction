execute unless score gamemode SettingsLob matches 2 run playsound minecraft:ui.button.click master @s 466.5 140 456.5 0.4
execute if score gamemode SettingsLob matches 2 run function lobby:settings/gamemodes/dm_ffa 
function lobby:settings/cooldown

#reset old
tp @e[tag=dm_team] 0 -100 0
kill @e[tag=dm_team]

#update the armor srtands / villager 
summon armor_stand 466.5 140 456.5 {Team:"BlueAlt",Tags:["dm_ffa","sett"],Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:18687}}},{id:"leather_leggings",Count:1b,tag:{display:{color:4093178}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:7707903}}},{id:"player_head",Count:1b,tag:{SkullOwner:"maskedlemon"}}],HandItems:[{},{id:"diamond_sword",Count:1b}],CustomName:'{"text":"FFA Deathmatch","color":"blue","bold":true}',CustomNameVisible:1b,DisabledSlots:4144959,Pose:{Head:[0f,312f,334f],LeftLeg:[0f,0f,350f],RightLeg:[13f,0f,4f],LeftArm:[0f,307f,224f],RightArm:[2f,0f,15f]}}
summon villager 0 0 0 {NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["sett","dm_ffa","1"],VillagerData:{profession:"minecraft:nitwit"},ActiveEffects:[{Id:14,Amplifier:0b,Duration:100,ShowParticles:0b}]}
summon villager 0 0 0 {NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["sett","dm_ffa","2"],VillagerData:{profession:"minecraft:nitwit"},ActiveEffects:[{Id:14,Amplifier:0b,Duration:100,ShowParticles:0b}]}
schedule function lobby:settings/gamemodes/team_switch/dm/to_ffa_tp 2t


#update sign 
setblock 466 139 457 air replace
setblock 466 139 457 minecraft:dark_oak_wall_sign[facing=south]{front_text:{messages:['{"text":"","clickEvent":{"action":"run_command","value":"execute if score settings Tmr matches ..0 run function lobby:settings/gamemodes/team_switch/dm/to_team"}}','{"text":"Switch to","color":"aqua"}','{"text":"Team Deathmatch","color":"green"}','{"text":""}']}} replace

