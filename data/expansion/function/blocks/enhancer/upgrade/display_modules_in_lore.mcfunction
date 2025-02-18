data remove storage expansion:module_string string
data modify storage expansion:module_string string append from storage expansion:temp ModStorage[0].components.minecraft:custom_data.icon
data modify storage expansion:module_string string append from storage expansion:temp ModStorage[1].components.minecraft:custom_data.icon
data modify storage expansion:module_string string append from storage expansion:temp ModStorage[2].components.minecraft:custom_data.icon
data modify storage expansion:module_string string append from storage expansion:temp ModStorage[3].components.minecraft:custom_data.icon
item modify block ~ ~ ~ container.10 {function:"set_lore",entity:"this",mode:"replace_section",offset:4,size:1,lore:[{"storage":"expansion:module_string","nbt":"string","interpret":true,"font":"expansion:default","color":"white","italic":false,"separator":{"text":""}}]}