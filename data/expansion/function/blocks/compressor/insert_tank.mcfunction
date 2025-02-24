# remove the players yhandheld item in the case of a normal swap
execute if score #temp exp.bool matches 1 run item replace entity @s container.0 from entity @p weapon.mainhand expansion:portal/count_to_1
item modify entity @p[tag=exp.clicked] weapon.mainhand expansion:utility/set_count_from_score

# in the case of fast swap, immediately put the players helmet in the compressor
execute if score #temp exp.bool matches 2.. run item replace entity @s container.0 from entity @p armor.head
execute if score #temp exp.bool matches 2.. run item replace entity @p[tag=exp.clicked] armor.head with minecraft:air

# extract the max tank level upon insertion
execute store result score @s exp.fuel_max run data get entity @s item.components."minecraft:custom_data".oxygen.max

execute if items entity @s container.0 *[minecraft:custom_data~{oxygen_tank:1b}] rotated as @s run function expansion:blocks/compressor/display_tank
execute if items entity @s container.0 *[minecraft:custom_data~{space_equipment:1b}] rotated as @s run function expansion:blocks/compressor/display_equipment

# intiate the compression process
function expansion:blocks/compressor/compress/start

# remove the custom name from the compressor
execute on passengers if entity @s[type=interaction] run data merge entity @s {CustomName:'""'}

