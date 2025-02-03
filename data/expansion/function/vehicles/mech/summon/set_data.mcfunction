# summon the animated java rigs
execute positioned ~ ~1.48 ~ rotated as @s run function animated_java:mech_legs/summon {args: {}}
execute positioned ~ ~1.48 ~ rotated as @s run function animated_java:mech_torso/summon {args:{variant: 'empty_both'}}

# mount the animated java rigs to the entity stack
ride @e[type=item_display,tag=aj.mech_legs.root,limit=1,sort=nearest] mount @s
ride @e[type=item_display,tag=aj.mech_torso.root,limit=1,sort=nearest] mount @s

# equip stored modules
execute on passengers if entity @s[tag=exp.left_arm_control] store result score @s exp.mech_action_id run data get entity @s SelectedItem.components.minecraft:custom_data.mech_left_id
execute on passengers if entity @s[tag=exp.right_arm_control] store result score @s exp.mech_action_id run data get entity @s SelectedItem.components.minecraft:custom_data.mech_right_id
execute on passengers if entity @s[tag=exp.mech_arm_controller] run function expansion:vehicles/mech/summon/equip_modules

# set the idle animations
execute on passengers if entity @s[tag=aj.mech_legs.root] run function animated_java:mech_legs/animations/idle/play
execute on passengers if entity @s[tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/idle/play

tag @s remove exp.new_vehicle