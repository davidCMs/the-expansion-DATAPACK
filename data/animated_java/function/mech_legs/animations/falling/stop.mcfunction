# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.mech_legs.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'mech_legs', 'function_path': 'animated_java:mech_legs/animations/falling/stop'}
tag @s remove aj.mech_legs.animation.falling.playing
scoreboard players set @s aj.falling.frame 0
tag @s add aj.transforms_only
execute at @s run function animated_java:mech_legs/animations/falling/zzz/set_frame {frame: 0}
tag @s remove aj.transforms_only