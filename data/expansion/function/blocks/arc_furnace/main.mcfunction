# destroy the arc furnace
execute unless block ~ ~ ~ minecraft:dropper run function expansion:blocks/arc_furnace/destroy

# melting
execute on passengers unless items entity @s container.0 * on vehicle if items block ~ ~ ~ container.0 * if items block ~ ~ ~ container.2 * unless block ~ ~ ~ minecraft:dropper{Items:[{Slot:7b,count:64}]} run function expansion:blocks/arc_furnace/recipes
execute on passengers if items entity @s container.0 * on vehicle run function expansion:blocks/arc_furnace/melting/melting

# turn off the arc furnace if there are no more ingredients or if the output slot is full
execute if entity @s[tag=exp.smelting] on passengers unless items entity @s container.0 * on vehicle run function expansion:blocks/arc_furnace/switch_model/turn_off

# gui functions
execute if entity @s[tag=exp.player_nearby] run function expansion:blocks/arc_furnace/gui