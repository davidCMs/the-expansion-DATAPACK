# oxygen lvl
execute store result score #lvl exp.math run data get storage expansion:temp stats.oxygen.lvl
scoreboard players operation #temp exp.oxygen_lvl += #lvl exp.math
scoreboard players reset #lvl exp.math

# oxygen max
execute store result score #max exp.math run data get storage expansion:temp stats.oxygen.max
scoreboard players operation #temp exp.oxygen_max += #max exp.math
scoreboard players reset #max exp.math