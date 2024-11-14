# make this pivot the new root
tag @s add exp.planetarium_root

# update the corresponding display
execute on passengers if entity @s[type=snowball] on origin run function expansion:blocks/planetarium/set_root_display
