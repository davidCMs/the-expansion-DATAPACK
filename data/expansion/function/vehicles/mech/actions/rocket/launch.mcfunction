# prepare the stored rocket target
execute on vehicle run function expansion:vehicles/mech/actions/rocket/target/retrieve

# summon new rocket
execute if entity @s[tag=exp.left_arm_control] on vehicle on passengers if entity @s[tag=aj.mech_torso.root] at @s positioned ^1.3 ^1.5 ^3 rotated as @s run function expansion:vehicles/mech/actions/rocket/summon/new_stack
execute if entity @s[tag=exp.right_arm_control] on vehicle on passengers if entity @s[tag=aj.mech_torso.root] at @s positioned ^-1.3 ^1.5 ^3 rotated as @s run function expansion:vehicles/mech/actions/rocket/summon/new_stack
