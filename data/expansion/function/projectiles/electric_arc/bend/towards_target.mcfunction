# rotate the entity towards the target
execute on origin facing entity @s eyes as @e[type=snowball,tag=exp.electric_arc,distance=..0.01,limit=1] run rotate @s ~ ~

# store the rotation for later use
function expansion:projectiles/electric_arc/bend/get_rotation
