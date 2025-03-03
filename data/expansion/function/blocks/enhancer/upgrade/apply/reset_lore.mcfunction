data merge storage expansion:temp {icons:{text:"",color:"white"}}

# get the modstorage length
execute store result score #temp exp.hold_count run data get entity @s item.components."minecraft:custom_data".ModStorage

# check for some number of icons how many there should be, couldn't be bothered to make a storage loop
execute if score #temp exp.hold_count matches 1 run data modify storage expansion:temp icons.text set value "切"
execute if score #temp exp.hold_count matches 2 run data modify storage expansion:temp icons.text set value "切切"
execute if score #temp exp.hold_count matches 3 run data modify storage expansion:temp icons.text set value "切切切"
execute if score #temp exp.hold_count matches 4 run data modify storage expansion:temp icons.text set value "切切切切"
execute if score #temp exp.hold_count matches 5 run data modify storage expansion:temp icons.text set value "切切切切切"

# merge the empty icon list with the item
item modify entity @s contents expansion:space_equipment/blank

data remove storage expansion:temp icons
scoreboard players reset #temp exp.hold_count