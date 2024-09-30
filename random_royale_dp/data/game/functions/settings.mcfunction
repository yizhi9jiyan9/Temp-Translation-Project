scoreboard players operation gamemode Settings = gamemode SettingsLob
scoreboard players operation deathType Settings = deathType SettingsLob
scoreboard players operation teams Settings = teams SettingsLob
scoreboard players operation livesEnabled Settings = livesEnabled SettingsLob

scoreboard players operation buildReload Settings = buildReload SettingsLob
scoreboard players operation buildDestroy Settings = buildDestroy SettingsLob

scoreboard players operation rounds Settings = rounds SettingsLob
scoreboard players operation spawnStyle Settings = spawnStyle SettingsLob
scoreboard players operation itemSetup Settings = itemSetup SettingsLob
scoreboard players operation itemMirror Settings = itemMirror SettingsLob
scoreboard players operation itemTmr Settings = itemTmr SettingsLob
scoreboard players operation itemBox Settings = itemBox SettingsLob
scoreboard players operation itemBoxSetup Settings = itemBoxSetup SettingsLob
execute if score gamemode Settings matches 5 run function game:zombie/item_settings
execute if score gamemode Settings matches 6 run function game:weapon/item_settings

scoreboard players operation scoreToWin Settings = scoreToWin SettingsLob
scoreboard players operation respawnTime Settings = respawnTime SettingsLob
scoreboard players operation lives Settings = lives SettingsLob
scoreboard players operation traitorNum Settings = traitorNum SettingsLob
scoreboard players operation traitorBuff Settings = traitorBuff SettingsLob

scoreboard players operation teamNum Settings = teamNum SettingsLob


#item 
scoreboard players operation mainLength Settings = mainLength ItemList
scoreboard players operation secondLength Settings = secondLength ItemList
scoreboard players operation armorLength Settings = armorLength ItemList
data remove storage item game
data modify storage item game set from storage item {}

#special settings
#[1,2,3,4,5,7,8,11,13,16,18]
scoreboard players set specialSettings Settings 0
execute if score gamemode Settings matches 6 if score mainLength Settings matches 11 if score scoreToWin Settings matches 3 run scoreboard players set specialSettings Settings 1
execute if score gamemode Settings matches 1 if score mainLength Settings matches 5 if score secondLength Settings matches 8 if score itemBox Settings matches 0 if score lives Settings matches 2 run scoreboard players set specialSettings Settings 2
execute store result score #store Settings run data get storage item game.armor[0]
execute if score gamemode Settings matches 1 if score armorLength Settings matches 1 if score scoreToWin Settings matches 3 if score #store Settings matches 14 run scoreboard players set specialSettings Settings 3

execute if score specialSettings Settings matches 2 run tellraw @a[tag=doin] ["",{"text":"TNT决斗","color":"red"},{"text":" 秘密设置已激活！\n - 玩家现在只有掉入虚空才会死亡\n - 大幅度提高玩家的爆发力","color":"yellow"}]
execute if score specialSettings Settings matches 3 run tellraw @a[tag=doin] ["",{"text":"龙之战","color":"dark_purple"},{"text":"秘密设置已激活！\n - 允许烟花在物品栏堆叠\n - 降低烟花冷却\n - 如果你在空中受到伤害鞘翅将禁用。\n \u0020 \u0020- 落地后，鞘翅将重新启用","color":"yellow"}]

