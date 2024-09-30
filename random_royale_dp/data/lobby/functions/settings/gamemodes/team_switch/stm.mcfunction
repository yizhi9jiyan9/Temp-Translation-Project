##this just summons and is not refered to by any code!##

#reset old
tp @e[tag=stm] 0 -100 0
kill @e[tag=stm]

#update the armor srtands / villager 
summon armor_stand 462.5 140 456.5 {Team:"AquaAlt",Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:38312}}},{id:"leather_leggings",Count:1b,tag:{display:{color:48084}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:52712}}},{id:"player_head",Count:1b,tag:{SkullOwner:"MrReesePieces"}}],HandItems:[{},{id:"trident",Count:1b}],CustomName:'{"text":"Super Traitor Mystery","color":"aqua","bold":true}',CustomNameVisible:1b,Tags:["sett","stm"],Pose:{LeftLeg:[7f,0f,0f],RightLeg:[353f,8f,0f],LeftArm:[269f,40f,0f],RightArm:[269f,317f,0f]}}
summon villager 462.25 140 456.75 {NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["sett","stm","1"],VillagerData:{profession:"minecraft:nitwit"},ActiveEffects:[{Id:14,Amplifier:0b,Duration:100,ShowParticles:0b}]}
summon villager 462.75 140 456.75 {NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["sett","stm","2"],VillagerData:{profession:"minecraft:nitwit"},ActiveEffects:[{Id:14,Amplifier:0b,Duration:100,ShowParticles:0b}]}
