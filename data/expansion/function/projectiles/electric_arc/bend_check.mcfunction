# branch if unique_id is 1
execute unless score @s exp.counter_1 matches ..0 if predicate expansion:chance/005_chance run function expansion:projectiles/electric_arc/branch

# bend
function expansion:projectiles/electric_arc/bend