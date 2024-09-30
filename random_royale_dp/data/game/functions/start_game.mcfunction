#give players tag so know what to apply 
tag @a[scores={Player=0}] add doin

#set settings
execute unless score gamemode SettingsLob matches -1 run function game:settings
execute if score gamemode SettingsLob matches -1 run function lobby:settings/board/full_random/game_random

#reset player stuff
effect clear @a[tag=doin]
title @a[tag=doin] actionbar " "
tag @a[tag=doin] remove winner
scoreboard players reset * Deaths
scoreboard players reset * RoundsWon
scoreboard players reset * SafetyTmr
execute as @a[tag=doin] run function lobby:parkour/stop
function game:gen/force_end/reset

#set game data
data merge entity @e[type=armor_stand,tag=start,limit=1] {CustomName:'{"text":"游戏进行中","color":"gray","italic":false}'}
scoreboard players set main_gs Stats 3
scoreboard players set game_gs Stats 0
scoreboard players add num GameID 1
scoreboard players operation game GameID = num GameID
scoreboard players set round Stats 1
kill @e[tag=setup]
scoreboard players set noPlayerCancel Tmr 200
scoreboard players reset game Tmr

#set general player data 
scoreboard players set @a[tag=doin] Player 1
scoreboard players operation @a[tag=doin] GameID = game GameID
gamemode adventure @a[tag=doin]
effect give @a[tag=doin] instant_health 1 100 true
effect give @a[tag=doin] saturation 1 100 true
effect give @a[tag=doin] slowness 3 10 true
effect give @a[tag=doin] minecraft:jump_boost 3 200 true
title @a[tag=doin] times 20 100 20
spawnpoint @a[tag=doin] 416 131 443
scoreboard players reset @a[tag=doin] Deaths
scoreboard players reset @a[tag=doin] StuckTmr
scoreboard players reset @a[tag=doin] CrouchTmr
function lobby:players/bossbar_update
playsound entity.zombie.converted_to_drowned master @a 1000 100 1000 100 1.4

#items
execute if score itemSetup Settings matches 1 as @a[tag=doin] run function items:give/full_inventory_rand
execute if score itemSetup Settings matches 2..3 if score itemMirror Settings matches 0 as @a[tag=doin] run function items:give/full_inventory_rand
execute if score itemSetup Settings matches 2..3 if score itemMirror Settings matches 1 run tag @a[tag=doin] add doins
execute if score itemSetup Settings matches 2..3 if score itemMirror Settings matches 1 run function items:give/full_inventory_mirror
execute if score itemSetup Settings matches 3 run function game:gen/item/tmr/setup

execute unless score itemSetup Settings matches 3 if score itemBox Settings matches 1 unless score itemBoxSetup Settings matches 1 run function items:give/box/summon/big_summon
execute unless score itemSetup Settings matches 3 if score itemBox Settings matches 1 if score itemBoxSetup Settings matches 1 run function items:give/box/summon/bigger_summon

#set heal / hurt player data
scoreboard players set max HitId 0
function game:gen/kill/reset_ids
execute as @a[tag=doin] run function game:gen/kill/set_id
scoreboard players reset @a[tag=doin] HitterId
scoreboard players reset @a[tag=doin] HitTmr
scoreboard players reset @a[tag=doin] HealDamage
scoreboard players reset @a[tag=doin] HealTmr

#setting specific stuff
kill @e[type=marker,tag=team]
execute if score teams Settings matches 0 run team join Player @a[tag=doin]
execute if score teams Settings matches 1 run function game:gen/team/unjoined
execute if score teams Settings matches 1 run function game:gen/team/summon

function game:gen/death/init

execute if score spawnStyle Settings matches 4 run function game:gen/spawn/team_setup/start
execute as @a[tag=doin] run function game:gen/spawn/main

#gamemode specific start stuff
execute if score gamemode Settings matches 0 run function game:dm_ffa/start
execute if score gamemode Settings matches 1 run function game:elim_ffa/start
execute if score gamemode Settings matches 2 run function game:dm_team/start
execute if score gamemode Settings matches 3 run function game:elim_team/start
execute if score gamemode Settings matches 4 run function game:stm/start
execute if score gamemode Settings matches 5 run function game:zombie/start
execute if score gamemode Settings matches 6 run function game:weapon/start

#remove player tag
tag @a[tag=doin] remove doin


