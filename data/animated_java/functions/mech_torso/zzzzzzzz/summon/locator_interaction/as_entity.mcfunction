tp @s ^0 ^1.25 ^0 ~0 ~0
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:mech_torso/on_summon/as_locator_entities