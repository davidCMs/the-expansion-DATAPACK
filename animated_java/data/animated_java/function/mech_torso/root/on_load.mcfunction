# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[tag=aj.mech_torso.root] run return 0
execute on passengers if entity @s[tag=aj.mech_torso.data] unless data entity @s {data:{rigHash: 'c5edecbf1d31532ab6cd6e8f6ad62feb37536b6650691be1d59b34ceadd0ad84'}} on vehicle run function animated_java:mech_torso/root/zzz/0
scoreboard players set @s aj.is_rig_loaded 1