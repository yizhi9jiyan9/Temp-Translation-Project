scoreboard objectives add Rand dummy
scoreboard objectives add Join dummy

scoreboard objectives add Stats dummy
scoreboard objectives add Tmr dummy
scoreboard objectives add Player dummy
scoreboard objectives add Settings dummy
scoreboard objectives add SettingsLob dummy
scoreboard objectives add Load dummy
scoreboard objectives add GameID dummy
scoreboard objectives add Num dummy
scoreboard objectives add ID dummy
scoreboard objectives add Build dummy
scoreboard objectives add Team dummy
scoreboard objectives add SafetyTmr dummy


scoreboard objectives add ItemM dummy
scoreboard objectives add ItemS dummy
scoreboard objectives add ItemA dummy
scoreboard objectives add ItemMtmr dummy
scoreboard objectives add ItemM1 dummy
scoreboard objectives add ItemM2 dummy
scoreboard objectives add ItemM3 dummy
scoreboard objectives add ItemStmr dummy
scoreboard objectives add ItemS1 dummy
scoreboard objectives add ItemS2 dummy
scoreboard objectives add ItemS3 dummy
scoreboard objectives add ItemAtmr dummy
scoreboard objectives add ItemA1 dummy
scoreboard objectives add ItemA2 dummy
scoreboard objectives add ItemA3 dummy
scoreboard objectives add ItemList dummy

scoreboard objectives add IKills playerKillCount
scoreboard objectives add IGolden_apple used:golden_apple
scoreboard objectives add IPotion used:potion
scoreboard objectives add ISplash_potion used:splash_potion
scoreboard objectives add ISnowball used:snowball
scoreboard objectives add ICarrot_stick used:carrot_on_a_stick
scoreboard objectives add IDie deathCount
scoreboard objectives add ITrident minecraft.used:minecraft.trident
scoreboard objectives add ICrossbow minecraft.used:minecraft.crossbow
scoreboard objectives add ILingering_potion minecraft.used:minecraft.lingering_potion
scoreboard objectives add IShift custom:sneak_time
scoreboard objectives add IBow used:bow
scoreboard objectives add IHorse_spawn_egg used:horse_spawn_egg
scoreboard objectives add IFirework used:firework_rocket
scoreboard objectives add IEgg used:egg
scoreboard objectives add IThrow_bow dropped:bow
scoreboard objectives add IThrow_crossbow dropped:crossbow
scoreboard objectives add IDamage custom:damage_taken
scoreboard objectives add IEnder_eye used:ender_eye


scoreboard objectives add FFAScores dummy
scoreboard objectives add FFAScoresDisp dummy [{"text":"-- ","color":"yellow"},{"text":"当前分数 ","color":"gold"},{"text":"--","color":"yellow"}]
scoreboard objectives add RoundsWon dummy
scoreboard objectives add Deaths deathCount
scoreboard objectives add DeathTmr dummy
scoreboard objectives add NodeConnect dummy
scoreboard objectives add BuildX dummy
scoreboard objectives add BuildZ dummy
scoreboard objectives add LeaveSpectator trigger
scoreboard objectives add HealDamage custom:damage_taken
scoreboard objectives add HealTmr dummy
scoreboard objectives add FoodLevel food
scoreboard objectives add Health health
scoreboard objectives add Lives dummy [{"text":"-- ","color":"yellow"},{"text":"Lives ","color":"gold"},{"text":"--","color":"yellow"}]
scoreboard objectives add Box dummy
scoreboard objectives add BoxOpen custom:trigger_trapped_chest
scoreboard objectives add StuckTmr dummy
scoreboard objectives add CrouchTmr dummy
scoreboard objectives add Crouch custom:sneak_time
scoreboard objectives add CrouchWalk custom:crouch_one_cm
scoreboard objectives add CrouchDamage custom:damage_taken
scoreboard objectives add StuckCount dummy
scoreboard objectives add Parkour dummy
scoreboard objectives add TpBookTrigger trigger
scoreboard objectives add Tips trigger
scoreboard objectives add EndGame trigger
scoreboard objectives add WeaponRoyale dummy
scoreboard objectives add ParkourLoc dummy

scoreboard objectives add HitID dummy
scoreboard objectives add HitterID dummy
scoreboard objectives add HitTmr dummy
scoreboard objectives add PosExplodeID dummy
scoreboard objectives add OuchID dummy
scoreboard objectives add HoardID dummy [{"text":"-- ","color":"yellow"},{"text":"武器序号 ","color":"gold"},{"text":"--","color":"yellow"}]
scoreboard objectives add HoardOgID dummy



scoreboard players add load_gs Stats 0
execute unless score HS Parkour matches 1.. run scoreboard players set HS Parkour 1000000000

execute unless score gamemode SettingsLob matches -1.. run scoreboard players set gamemode SettingsLob 0
execute unless score deathType SettingsLob matches 0.. run scoreboard players set deathType SettingsLob 0
execute unless score teams SettingsLob matches 0.. run scoreboard players set teams SettingsLob 0
execute unless score livesEnabled SettingsLob matches 0.. run scoreboard players set livesEnabled SettingsLob 0

execute unless score buildRounds SettingsLob matches 2.. run scoreboard players set buildRounds SettingsLob 2
execute unless score buildReload SettingsLob matches 0.. run scoreboard players set buildReload SettingsLob 1
execute unless score buildR1 SettingsLob matches 0.. run scoreboard players set buildR1 SettingsLob 2
execute unless score buildR2 SettingsLob matches 0.. run scoreboard players set buildR2 SettingsLob 2
execute unless score buildR3 SettingsLob matches 0.. run scoreboard players set buildR3 SettingsLob 2
execute unless score buildStyle SettingsLob matches 1.. run scoreboard players set buildStyle SettingsLob 1
execute unless score buildMirror SettingsLob matches 0.. run scoreboard players set buildMirror SettingsLob 0
execute unless score buildDestroy SettingsLob matches 0.. run scoreboard players set buildDestroy SettingsLob 1

execute unless score rounds SettingsLob matches 1.. run scoreboard players set rounds SettingsLob 1
execute unless score spawnStyle SettingsLob matches 1.. run scoreboard players set spawnStyle SettingsLob 1
execute unless score itemSetup SettingsLob matches 1.. run scoreboard players set itemSetup SettingsLob 2
execute unless score itemMirror SettingsLob matches 0.. run scoreboard players set itemMirror SettingsLob 0
execute unless score itemTmr SettingsLob matches 1.. run scoreboard players set itemTmr SettingsLob 1
execute unless score itemBox SettingsLob matches 0.. run scoreboard players set itemBox SettingsLob 1
execute unless score itemBoxSetup SettingsLob matches 1.. run scoreboard players set itemBoxSetup SettingsLob 1

execute unless score scoreToWin SettingsLob matches 1.. run scoreboard players set scoreToWin SettingsLob 2
execute unless score respawnTime SettingsLob matches 1.. run scoreboard players set respawnTime SettingsLob 2
execute unless score lives SettingsLob matches 1.. run scoreboard players set lives SettingsLob 1
execute unless score teamNum SettingsLob matches 2.. run scoreboard players set teamNum SettingsLob 4
execute unless score traitorNum SettingsLob matches 0.. run scoreboard players set traitorNum SettingsLob 0
execute unless score traitorBuff SettingsLob matches 0.. run scoreboard players set traitorBuff SettingsLob 1


execute unless score admin SettingsLob matches 0.. run scoreboard players set admin SettingsLob 0
execute unless score adv SettingsLob matches 0.. run scoreboard players set adv SettingsLob 0
function lobby:settings/display/main
execute positioned 463 140 464 run function preset_load:load
execute positioned 470 140 463 run function item_chest:load

scoreboard players set 2 Num 2
scoreboard players set 5 Num 5
scoreboard players set 10 Num 10
scoreboard players set 20 Num 20
scoreboard players set 30 Num 30
scoreboard players set 35 Num 35
scoreboard players set 40 Num 40
scoreboard players set 50 Num 50
scoreboard players set 75 Num 75
scoreboard players set 85 Num 85
scoreboard players set 100 Num 100
scoreboard players set 180 Num 180
scoreboard players set 200 Num 200
scoreboard players set 360 Num 360
scoreboard players set 400 Num 400
scoreboard players set 900 Num 900
scoreboard players set 1000 Num 1000
scoreboard players set 1200 Num 1200
scoreboard players set 21 Num 21
scoreboard players set -1 Num -1


forceload add 0 0
forceload add 880 880 1120 1120
setblock 0 -1 0 bedrock replace
setblock 0 0 0 oak_sign replace
#^ may be too big. Can shrink, but if you do make sure to run the remove forceload!



team add Player
team modify Player collisionRule always
team modify Player deathMessageVisibility never
team modify Player friendlyFire true
team modify Player nametagVisibility always
team modify Player seeFriendlyInvisibles false
team modify Player color aqua

team add PlayerSTM
team modify PlayerSTM collisionRule always
team modify PlayerSTM deathMessageVisibility never
team modify PlayerSTM friendlyFire true
team modify PlayerSTM nametagVisibility always
team modify PlayerSTM seeFriendlyInvisibles false
team modify PlayerSTM color aqua

team add aWin
team modify aWin collisionRule always
team modify aWin deathMessageVisibility never
team modify aWin friendlyFire true
team modify aWin nametagVisibility always
team modify aWin seeFriendlyInvisibles false
team modify aWin color gold

team add Playnt
team modify Playnt collisionRule never
team modify Playnt deathMessageVisibility never
team modify Playnt friendlyFire true
team modify Playnt nametagVisibility always
team modify Playnt seeFriendlyInvisibles false
team modify Playnt color reset


team add Spectator
team modify Spectator collisionRule never
team modify Spectator deathMessageVisibility never
team modify Spectator friendlyFire true
team modify Spectator nametagVisibility always
team modify Spectator seeFriendlyInvisibles true
team modify Spectator color gray

team add POE 
team modify POE collisionRule never
team modify POE deathMessageVisibility never
team modify POE friendlyFire true
team modify POE nametagVisibility always
team modify POE seeFriendlyInvisibles false
team modify POE prefix {"text":"[Creator] ","color":"aqua"}

team add ParkourRecord
team modify ParkourRecord collisionRule never
team modify ParkourRecord deathMessageVisibility never
team modify ParkourRecord friendlyFire true
team modify ParkourRecord nametagVisibility always
team modify ParkourRecord seeFriendlyInvisibles false
team modify ParkourRecord prefix {"text":"[Parkour World Record] ","color":"purple"}

team add ParkourRecordAny
team modify ParkourRecordAny collisionRule never
team modify ParkourRecordAny deathMessageVisibility never
team modify ParkourRecordAny friendlyFire true
team modify ParkourRecordAny nametagVisibility always
team modify ParkourRecordAny seeFriendlyInvisibles false
team modify ParkourRecordAny prefix {"text":"[Parkour Any% World Record] ","color":"purple"}

team add Tester 
team modify Tester collisionRule never
team modify Tester deathMessageVisibility never
team modify Tester friendlyFire true
team modify Tester nametagVisibility always
team modify Tester seeFriendlyInvisibles false
team modify Tester prefix {"text":"[Tester] ","color":"gold"}

team add Red
team modify Red collisionRule pushOtherTeams
team modify Red deathMessageVisibility never
team modify Red friendlyFire false
team modify Red nametagVisibility always
team modify Red seeFriendlyInvisibles true
team modify Red color red
team modify Red prefix {"text":"[红] ","color":"red"}

team add Blue
team modify Blue collisionRule pushOtherTeams
team modify Blue deathMessageVisibility never
team modify Blue friendlyFire false
team modify Blue nametagVisibility always
team modify Blue seeFriendlyInvisibles true
team modify Blue color blue
team modify Blue prefix {"text":"[栏] ","color":"blue"}

team add Green
team modify Green collisionRule pushOtherTeams
team modify Green deathMessageVisibility never
team modify Green friendlyFire false
team modify Green nametagVisibility always
team modify Green seeFriendlyInvisibles true
team modify Green color green
team modify Green prefix {"text":"[绿] ","color":"green"}

team add Yellow
team modify Yellow collisionRule pushOtherTeams
team modify Yellow deathMessageVisibility never
team modify Yellow friendlyFire false
team modify Yellow nametagVisibility always
team modify Yellow seeFriendlyInvisibles true
team modify Yellow color yellow
team modify Yellow prefix {"text":"[黄] ","color":"yellow"}

team add RedAlt
team modify RedAlt color red
team add BlueAlt
team modify BlueAlt color blue
team add GreenAlt
team modify GreenAlt color green
team add YellowAlt
team modify YellowAlt color gold
team add AquaAlt
team modify AquaAlt color aqua
team add DarkGreenAlt
team modify DarkGreenAlt color dark_green
team add DarkPurpleAlt
team modify DarkPurpleAlt color dark_purple

team add RedScore
team modify RedScore color red
team modify RedScore suffix {"text":" Team:","color":"red"}
team add BlueScore
team modify BlueScore color blue
team modify BlueScore suffix {"text":" Team:","color":"blue"}
team add GreenScore
team modify GreenScore color green
team modify GreenScore suffix {"text":" Team:","color":"green"}
team add YellowScore
team modify YellowScore color yellow
team modify YellowScore suffix {"text":" Team:","color":"yellow"}
team join RedScore Red
team join BlueScore Blue
team join GreenScore Green
team join YellowScore Yellow

team add DiamondSword 
team modify DiamondSword prefix {"text":"[钻石剑] ","color":"aqua","italic":false}
team modify DiamondSword friendlyFire false 
team modify DiamondSword color aqua
team modify DiamondSword nametagVisibility hideForOtherTeams
team add IronAxe 
team modify IronAxe prefix {"text":"[铁斧] ","color":"#C0C0C0","italic":false}
team modify IronAxe friendlyFire false 
team modify IronAxe color aqua
team modify IronAxe nametagVisibility hideForOtherTeams
team add RageAxe 
team modify RageAxe prefix {"text":"[狂怒之斧] ","color":"red","italic":false}
team modify RageAxe friendlyFire false 
team modify RageAxe color aqua
team modify RageAxe nametagVisibility hideForOtherTeams
team add ReapersBlade 
team modify ReapersBlade prefix {"text":"[收割者的刀] ","color":"#4A4A4A","italic":false}
team modify ReapersBlade friendlyFire false 
team modify ReapersBlade color aqua
team modify ReapersBlade nametagVisibility hideForOtherTeams
team add TraitorTrident 
team modify TraitorTrident prefix {"text":"[叛徒三叉戟] ","color":"dark_aqua","italic":false}
team modify TraitorTrident friendlyFire false 
team modify TraitorTrident color aqua
team modify TraitorTrident nametagVisibility hideForOtherTeams
team add Bow 
team modify Bow prefix {"text":"[弓] ","color":"#8C5E00","italic":false}
team modify Bow friendlyFire false 
team modify Bow color aqua
team modify Bow nametagVisibility hideForOtherTeams
team add Dagger 
team modify Dagger prefix {"text":"[匕首] ","color":"aqua","italic":false}
team modify Dagger friendlyFire false 
team modify Dagger color aqua
team modify Dagger nametagVisibility hideForOtherTeams
team add Hamaxe 
team modify Hamaxe prefix {"text":"[锤斧] ","color":"dark_aqua","italic":false}
team modify Hamaxe friendlyFire false 
team modify Hamaxe color aqua
team modify Hamaxe nametagVisibility hideForOtherTeams
team add CarrotLauncher 
team modify CarrotLauncher prefix {"text":"[胡萝卜发射器] ","color":"gold","italic":false}
team modify CarrotLauncher friendlyFire false 
team modify CarrotLauncher color aqua
team modify CarrotLauncher nametagVisibility hideForOtherTeams
team add BoomBow 
team modify BoomBow prefix {"text":"[爆炸弓] ","color":"red","italic":false}
team modify BoomBow friendlyFire false 
team modify BoomBow color aqua
team modify BoomBow nametagVisibility hideForOtherTeams
team add SlapStick 
team modify SlapStick prefix {"text":"[击退棒] ","color":"green","italic":false}
team modify SlapStick friendlyFire false 
team modify SlapStick color aqua
team modify SlapStick nametagVisibility hideForOtherTeams
team add Spleefer 
team modify Spleefer prefix {"text":"[长距掘地铲] ","color":"white","italic":false}
team modify Spleefer friendlyFire false 
team modify Spleefer color aqua
team modify Spleefer nametagVisibility hideForOtherTeams
team add Gauntlet
team modify Gauntlet prefix {"text":"[铁拳] ","color":"gray","italic":false}
team modify Gauntlet friendlyFire false 
team modify Gauntlet color aqua
team modify Gauntlet nametagVisibility hideForOtherTeams
team add Crossbow 
team modify Crossbow prefix {"text":"[驽] ","color":"#8C5E00","italic":false}
team modify Crossbow friendlyFire false 
team modify Crossbow color aqua
team modify Crossbow nametagVisibility hideForOtherTeams
team add ExplosiveWand 
team modify ExplosiveWand prefix {"text":"[爆炸魔法棍] ","color":"light_purple","italic":false}
team modify ExplosiveWand friendlyFire false 
team modify ExplosiveWand color aqua
team modify ExplosiveWand nametagVisibility hideForOtherTeams
team add StaffOfTheUnderworld
team modify StaffOfTheUnderworld prefix {"text":"[凋零之杖] ","color":"#474747","italic":false}
team modify StaffOfTheUnderworld friendlyFire false 
team modify StaffOfTheUnderworld color aqua
team modify StaffOfTheUnderworld nametagVisibility hideForOtherTeams
team add Turret
team modify Turret prefix {"text":"[弓驽二合一] ","color":"#B3B3B3","italic":false}
team modify Turret friendlyFire false 
team modify Turret color aqua
team modify Turret nametagVisibility hideForOtherTeams
team add DashDagger
team modify DashDagger prefix {"text":"[末影匕首] ","color":"dark_aqua","italic":false}
team modify DashDagger friendlyFire false 
team modify DashDagger color aqua
team modify DashDagger nametagVisibility hideForOtherTeams

bossbar add game ""
bossbar set game color yellow

bossbar add traitor [{"text":"你是","color":"red","italic":false},{"text":"杀手","color":"dark_red","bold":true,"italic":false}]
bossbar set minecraft:traitor color red
bossbar set minecraft:traitor value 100

bossbar add innocent [{"text":"你是","color":"green","italic":false},{"text":"侦探","color":"dark_green","bold":true,"italic":false}]
bossbar set minecraft:innocent color green
bossbar set minecraft:innocent value 100

bossbar add blue_team [{"text":"You are on Blue Team","color":"blue","italic":false}]
bossbar set minecraft:blue_team name [{"text":"You are on Blue Team","color":"blue","italic":false}]
bossbar set minecraft:blue_team color blue
bossbar set minecraft:blue_team value 100
bossbar add red_team [{"text":"You are on Red Team","color":"red","italic":false}]
bossbar set minecraft:red_team name [{"text":"You are on Red Team","color":"red","italic":false}]
bossbar set minecraft:red_team color red
bossbar set minecraft:red_team value 100
bossbar add green_team [{"text":"You are on Green Team","color":"green","italic":false}]
bossbar set minecraft:green_team name [{"text":"You are on Green Team","color":"green","italic":false}]
bossbar set minecraft:green_team color green
bossbar set minecraft:green_team value 100
bossbar add yellow_team [{"text":"You are on Yellow Team","color":"yellow","italic":false}]
bossbar set minecraft:yellow_team name [{"text":"You are on Yellow Team","color":"yellow","italic":false}]
bossbar set minecraft:yellow_team color yellow
bossbar set minecraft:yellow_team value 100



#bossbar add lobby ["",{"text":"Gamemode Selected: ","color":"gray"},{"text":"FFA Deathmatch","color":"blue"}]
#bossbar set minecraft:lobby color blue
bossbar set minecraft:lobby max 1
bossbar set minecraft:lobby value 1


##EVERY GAMERULE (almost) MAKE SURE TO EDIT TO NEEDS
gamerule announceAdvancements true
gamerule commandBlockOutput false
gamerule disableElytraMovementCheck false
gamerule disableRaids true
gamerule doDaylightCycle false
gamerule doEntityDrops false
gamerule doFireTick false
gamerule doImmediateRespawn true
gamerule doInsomnia false
gamerule doLimitedCrafting true
gamerule doMobLoot false
gamerule doMobSpawning false
gamerule doPatrolSpawning false
gamerule doTileDrops false
gamerule doTraderSpawning false
gamerule doWeatherCycle false
gamerule drowningDamage true
gamerule fallDamage true
gamerule fallDamage true
gamerule forgiveDeadPlayers false
gamerule freezeDamage true
gamerule keepInventory true
gamerule logAdminCommands false
gamerule maxCommandChainLength 100000
gamerule mobGriefing true
gamerule naturalRegeneration false
gamerule playersSleepingPercentage 110
gamerule randomTickSpeed 0
gamerule sendCommandFeedback false
gamerule reducedDebugInfo false
gamerule showDeathMessages false
gamerule spawnRadius 0
gamerule spectatorsGenerateChunks true
gamerule universalAnger false
