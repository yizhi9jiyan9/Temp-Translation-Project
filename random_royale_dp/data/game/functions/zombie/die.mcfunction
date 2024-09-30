
#join the other hoard 
function items:m/reset
scoreboard players operation @s HoardID = @a[tag=v] HoardID
scoreboard players operation @s ItemM = @a[tag=v] HoardID
function items:m/set

#join hoards official team?
function game:zombie/teams
#execute as @a[tag=v] run function game:zombie/teams_no_text



