# reset score
scoreboard players reset @s exp.bool

# copy the item in the output slot to a storage
data modify storage expansion:compare_item data.item1 set from block ~ ~ ~ Items[{Slot:15b}]
data remove storage expansion:compare_item data.item1.Slot
data modify storage expansion:compare_item data.item1.count set value 1

# copy the to be crafted item to the storage
data modify storage expansion:compare_item data.item2 set from entity @s item

# attempt to replace the output item with the storage item, 
# is it succeeds, the output item is different and the function fails
execute store success score @s exp.bool run data modify storage expansion:compare_item data.item1 set from storage expansion:compare_item data.item2

# reset storage
data remove storage expansion:compare_item data

execute if score @s exp.bool matches 1 run return fail
return 1