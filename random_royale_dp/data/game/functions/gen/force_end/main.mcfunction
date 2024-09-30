#enable! 
scoreboard players enable @a[scores={Player=1..2}] EndGame 

#detect numbers 
execute store result score #players EndGame if entity @a[scores={Player=1..2}]
execute store result score #enders EndGame if entity @a[scores={Player=1..2,EndGame=1..}]

#detect vote
execute if entity @a[scores={Player=1..2,EndGame=1}] unless score #players EndGame = #enders EndGame run function game:gen/force_end/update
execute if entity @a[scores={Player=1..2,EndGame=2}] if score #players EndGame = #enders EndGame run function game:gen/force_end/end
