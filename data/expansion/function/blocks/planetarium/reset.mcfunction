# remove the tag
tag @s remove exp.planetarium_root

# restore the transform values of the displays belonging to this pivot
execute on passengers if entity @s[type=snowball] on origin run function expansion:blocks/planetarium/remove_root_display