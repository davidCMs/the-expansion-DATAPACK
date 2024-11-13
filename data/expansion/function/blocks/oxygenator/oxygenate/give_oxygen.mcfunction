execute unless entity @s[tag=exp.has_oxygen] run function expansion:blocks/oxygenator/oxygenate/titles/oxygenated

tag @s add exp.has_oxygen
tag @s remove exp.recieved_oxygen