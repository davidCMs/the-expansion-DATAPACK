# copies item data from a storage onto an item entity
loot spawn ~ ~ ~ loot expansion:items/gui/filler
execute as @e[type=item,distance=..0.01,limit=1,nbt={Item:{components:{"minecraft:custom_data":{gui_item:1b}}}}] run function expansion:utilities/barrel/gui/copy_item
data remove storage expansion:temp Item