# prepare the stored rocket target
function expansion:vehicles/mech/actions/righthand/rocket/target/retrieve

# summon new rocket
execute on passengers if entity @s[tag=aj.mech_torso.root] at @s positioned ^1.3 ^1.5 ^3 rotated as @s run function expansion:vehicles/mech/actions/righthand/rocket/summon/new_stack
