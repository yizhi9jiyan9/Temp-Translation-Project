bossbar set lobby players
execute unless score main_gs Stats matches 3 run bossbar set lobby players @a
execute if score main_gs Stats matches 3 run bossbar set lobby players @a[scores={Player=0}]