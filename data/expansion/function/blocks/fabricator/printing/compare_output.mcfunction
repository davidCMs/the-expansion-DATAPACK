data modify storage expansion:compare_item data.item1 set from block ~ ~ ~ Items[{Slot:15b}]
data remove storage expansion:compare_item data.item1.Slot
data modify storage expansion:compare_item data.item1.count set value 1

data modify storage expansion:compare_item data.item2 set from entity @s item

execute store success score @s exp.bool run data modify storage expansion:compare_item data.item1 set from storage expansion:compare_item data.item2

data remove storage expansion:compare_item data
