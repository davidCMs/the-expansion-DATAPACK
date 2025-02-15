loot spawn ~ ~ ~ loot expansion:items/gui/filler

$data modify entity @e[type=item,distance=..0.01,limit=1] Item set from block ~ ~ ~ Items[{Slot:$(Slot)b}]

$item replace entity @s container.$(Slot) with air