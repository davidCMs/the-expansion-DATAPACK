execute unless entity @s[tag=exp.inside_habitable_space] run function expansion:blocks/oxygenator/oxygenate/titles/oxygenated

tag @s add exp.inside_habitable_space
tag @s remove exp.recieved_oxygen