##this just summons and is not refered to by any code!##

#reset old
tp @e[tag=weapon] 0 -100 0
kill @e[tag=weapon]

#update the armor srtands / villager 
summon armor_stand 470.5 140 457.5 {Team:"DarkPurpleAlt",Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:10289407}}},{id:"leather_leggings",Count:1b,tag:{display:{color:13369599}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:16711931}}},{id:"player_head",Count:1b,tag:{SkullOwner:"carreias"}}],HandItems:[{id:"iron_shovel",Count:1b},{id:"crossbow",Count:1b,tag:{ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{},{}],Charged:1b}}],CustomName:'{"text":"Weapon Royale","color":"dark_purple","bold":true}',CustomNameVisible:1b,Tags:["sett","weapon"],DisabledSlots:4144959,Pose:{Head:[13f,8f,0f],LeftLeg:[353f,0f,0f],RightLeg:[7f,24f,0f],LeftArm:[300f,29f,0f],RightArm:[0f,0f,15f]}}
summon villager 470.25 140 457.75 {NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["sett","weapon","1"],VillagerData:{profession:"minecraft:nitwit"},ActiveEffects:[{Id:14,Amplifier:0b,Duration:100,ShowParticles:0b}]}
summon villager 470.75 140 457.75 {NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["sett","weapon","2"],VillagerData:{profession:"minecraft:nitwit"},ActiveEffects:[{Id:14,Amplifier:0b,Duration:100,ShowParticles:0b}]}

