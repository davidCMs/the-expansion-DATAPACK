data modify storage expansion:compare_item data.item1 set from block ~ ~ ~ Items[{Slot:7b}]
data remove storage expansion:compare_item data.item1.Slot
data remove storage expansion:compare_item data.item1.count

execute on passengers run data modify storage expansion:compare_item data.item2 set from entity @s item
data remove storage expansion:compare_item data.item2.count

execute store success score @s exp.bool run data modify storage expansion:compare_item data.item2 set from storage expansion:compare_item data.item1

data remove storage expansion:compare_item data