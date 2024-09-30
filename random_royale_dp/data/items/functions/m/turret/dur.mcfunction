#bow code
execute if score @s ItemM1 matches 0 if predicate items:m_hold run function items:m/turret/bow

#turret code
execute if score @s ItemM1 matches 1 if predicate items:m_hold run function items:m/turret/crossbow

