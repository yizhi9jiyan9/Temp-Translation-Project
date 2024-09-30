#no take saddle or armor!
clear @a[scores={Player=1..2}] #items:all{horse:1}

#set saddle and thing back
execute unless entity @s[nbt={SaddleItem:{tag:{horse:1}}}] run item replace entity @s horse.saddle with saddle{horse:1}
execute unless entity @s[nbt={ArmorItem:{tag:{horse:1}}}] run item replace entity @s horse.armor with iron_horse_armor{horse:1}