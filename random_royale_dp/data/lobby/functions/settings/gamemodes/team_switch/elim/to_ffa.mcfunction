execute unless score gamemode SettingsLob matches 3 run playsound minecraft:ui.button.click master @s 466.5 140 456.5 0.4
execute if score gamemode SettingsLob matches 3 run function lobby:settings/gamemodes/elim_ffa 
function lobby:settings/cooldown

#reset old
tp @e[tag=elim_team] 0 -100 0
kill @e[tag=elim_team]

#update the armor srtands / villager 
summon armor_stand 468.5 140 456.5 {Team:"RedAlt",Tags:["elim_ffa","sett"],Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:12517376}}},{id:"leather_leggings",Count:1b,tag:{display:{color:12533053}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:12409691}}},{id:"player_head",Count:1b,tag:{SkullOwner:"Norton9"}}],HandItems:[{id:"stone_axe",Count:1b},{id:"stone_axe",Count:1b}],CustomName:'{"text":"FFA Elimination","color":"red","bold":true}',CustomNameVisible:1b,DisabledSlots:4144959,Pose:{LeftLeg:[358f,343f,0f],RightLeg:[13f,0f,4f],LeftArm:[0f,300f,310f],RightArm:[0f,60f,50f]}}
summon villager 0 0 0 {NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["sett","elim_ffa","1"],VillagerData:{profession:"minecraft:nitwit"},ActiveEffects:[{Id:14,Amplifier:0b,Duration:100,ShowParticles:0b}]}
summon villager 0 0 0 {NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["sett","elim_ffa","2"],VillagerData:{profession:"minecraft:nitwit"},ActiveEffects:[{Id:14,Amplifier:0b,Duration:100,ShowParticles:0b}]}
schedule function lobby:settings/gamemodes/team_switch/elim/to_ffa_tp 2t


#update sign 
setblock 468 139 457 air replace
setblock 468 139 457 minecraft:dark_oak_wall_sign[facing=south]{front_text:{messages:['{"text":"","clickEvent":{"action":"run_command","value":"execute if score settings Tmr matches ..0 run function lobby:settings/gamemodes/team_switch/elim/to_team"}}','{"text":"Switch to","color":"aqua"}','{"text":"Team Elimination","color":"yellow"}','{"text":""}']}} replace

