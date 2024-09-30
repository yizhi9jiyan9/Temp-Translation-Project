#first load 
execute if score reloading Stats matches 0 run function lobby:load/first_load

#reload 
execute if score reloading Stats matches 1 run function lobby:load/reload

#reseting map (load_gs = 0)
execute if score main_gs Stats matches 2 if score load_gs Stats matches 0 run function lobby:load/reset_main


#set up map (load_gs = 1)
execute if score main_gs Stats matches 2 if score load_gs Stats matches 1 run function lobby:load/set_main
