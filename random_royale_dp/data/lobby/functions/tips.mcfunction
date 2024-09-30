#tip timer 
execute if score @s Tips matches -1 run tellraw @s [{"color":"gold","text":"Tips已禁用。"}]
execute if score @s Tips matches -1 run scoreboard players set @s Tips -2
execute unless score @s Tips matches ..-2 run scoreboard players add @s Tips 1

#which tips to show
scoreboard players operation #num Tips = @s Tips
scoreboard players operation #num Tips /= 900 Num
scoreboard players operation #tick Tips = @s Tips
scoreboard players operation #tick Tips %= 900 Num

execute if score #tick Tips matches 60 if score #num Tips matches 0 run tellraw @s [{"text":"\n"},{"text":"[Tip!] ","color":"gray"},{"text":"Tips是当您在大厅时会在聊天栏中出现的一些小提示。","color":"aqua"},{"text":"\n"},{"text":"[点击此处来显示下一条Tips]","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger Tips set 1798"}},{"text":" [点击此处禁用Tips]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger Tips set -1"}},{"text":"\n"}]
execute if score #tick Tips matches 899 if score #num Tips matches 1 run tellraw @s [{"text":"\n"},{"text":"[Tip!] ","color":"gray"},{"text":"使用快捷栏中的书可以在大厅中快速传送。","color":"aqua"},{"text":"\n"},{"text":"[点击此处来显示下一条Tips]","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger Tips set 2698"}},{"text":"\n"}]
execute if score #tick Tips matches 899 if score #num Tips matches 2 run tellraw @s [{"text":"\n"},{"text":"[Tip!] ","color":"gray"},{"text":"如果您发现自己在游戏中被困住了，请潜行5s，您就会重生而不会死亡。","color":"aqua"},{"text":"\n"},{"text":"[点击此处来显示下一条Tips]","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger Tips set 3598"}},{"text":"\n"}]
execute if score #tick Tips matches 899 if score #num Tips matches 3 run tellraw @s [{"text":"\n"},{"text":"[Tip!] ","color":"gray"},{"text":"如果您需要结束游戏，可以让所有存活的玩家运行/trigger EndGame 或让管理员运行/function game:full_end。","color":"aqua"},{"text":"\n"},{"text":"[点击此处来显示下一条Tips]","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger Tips set 4498"}},{"text":"\n"}]
execute if score #tick Tips matches 899 if score #num Tips matches 4 run tellraw @s [{"text":"\n"},{"text":"[Tip!] ","color":"gray"},{"text":"如果您无法理解这些设置，请查看板左侧的讲台，它对每个设置都进行了详细的解释。","color":"aqua"},{"text":"\n"},{"text":"[点击此处来显示下一条Tips]","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger Tips set 5398"}},{"text":"\n"}]
execute if score #tick Tips matches 899 if score #num Tips matches 5 run tellraw @s [{"text":"\n"},{"text":"[Tip!] ","color":"gray"},{"text":"您是否在无聊地等待下一场比赛？来试试我们的大厅跑酷并取得新的最佳纪录！","color":"aqua"},{"text":"\n"},{"text":"[点击此处来显示下一条Tips]","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger Tips set 6298"}},{"text":"\n"}]
execute if score #tick Tips matches 899 if score #num Tips matches 6 run tellraw @s [{"text":"\n"},{"text":"[Tip!] ","color":"gray"},{"text":"恭喜！您已经看完了所有Tips！如果您想再次浏览所有Tips，请运行 /trigger Tips set 1","color":"aqua"},{"text":"\n"}]


#disable tips 
scoreboard players enable @s Tips 