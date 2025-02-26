item replace block ~ ~-1 ~ container.10 from entity @p[tag=exp.clicked] weapon.mainhand
item replace entity @p[tag=exp.clicked] weapon.mainhand with air

execute positioned ~ ~-1 ~ run function expansion:blocks/enhancer/display_helmet