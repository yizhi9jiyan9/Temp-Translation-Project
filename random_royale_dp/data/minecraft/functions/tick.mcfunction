# for NATools and should be disabled on release
effect give @e[type=slime,tag=pot] invisibility 1000000 0 true

#stuff that is so amazing and awesome it HAS to be put here


#main functions
function lobby:main
execute if score main_gs Stats matches 3 run function game:main