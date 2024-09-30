#detect button click 
scoreboard players remove tutorial Tmr 1
execute if block 520 132 440 polished_blackstone_button[powered=true] unless score tutorial Tmr matches 1.. run function lobby:tutorial/back
execute if block 520 132 444 polished_blackstone_button[powered=true] unless score tutorial Tmr matches 1.. run function lobby:tutorial/for