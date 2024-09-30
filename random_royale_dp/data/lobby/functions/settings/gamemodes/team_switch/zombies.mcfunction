##this just summons and is not refered to by any code!##

#reset old
tp @e[tag=zombie] 0 -100 0
kill @e[tag=zombie]

#update the armor srtands / villager 
summon armor_stand 460.5 140 457.5 {Team:"DarkGreenAlt",Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:27404}}},{id:"leather_leggings",Count:1b,tag:{display:{color:41235}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:47125}}},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:[I;88590980,-1760141968,-1676487694,-1068564671],Properties:{textures:[{Value:"e3RleHR1cmVzOntTS0lOOnt1cmw6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTNmZjIxMjQ2N2Y5OTVkMTk0ZGViN2MzYjlmZTVlOTRhMTZjMjEzOWNmZjNiMTY5NDQ5YmNjMDg2MDgxMWZkZSJ9fX0="}]}}}}],HandItems:[{},{}],CustomName:'{"text":"感染","color":"dark_green","bold":true}',CustomNameVisible:1b,Tags:["sett","zombie"],DisabledSlots:4144959,Pose:{Head:[0f,0f,25f],LeftLeg:[13f,0f,0f],RightLeg:[342f,8f,0f],LeftArm:[290f,349f,0f],RightArm:[259f,333f,20f]}}
summon villager 460.25 140 457.75 {NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["sett","zombie","1"],VillagerData:{profession:"minecraft:nitwit"},ActiveEffects:[{Id:14,Amplifier:0b,Duration:100,ShowParticles:0b}]}
summon villager 460.75 140 457.75 {NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["sett","zombie","2"],VillagerData:{profession:"minecraft:nitwit"},ActiveEffects:[{Id:14,Amplifier:0b,Duration:100,ShowParticles:0b}]}
