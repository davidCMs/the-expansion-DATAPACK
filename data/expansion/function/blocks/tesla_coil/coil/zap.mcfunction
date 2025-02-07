# speed is the amount of blocks per tick the signal travels
# half the max range divides the load over 2 ticks
scoreboard players set #temp exp.speed 10
# max range is the max amount of blocks the signal can travel (/2 in this case)
scoreboard players set #temp exp.max_range 40
# size_mod is the fraction of the current max_range that is given to the branch
scoreboard players set #temp exp.size_mod 2
# size is the maximum size of a branch
scoreboard players set #temp exp.size 2
# include unique_id 1 to enable branching
scoreboard players set #temp exp.unique_id 1
# damage is a BOOL that determines if this zap can deal damage
scoreboard players set #temp exp.damage 1

execute summon snowball run function expansion:projectiles/electric_arc/cast