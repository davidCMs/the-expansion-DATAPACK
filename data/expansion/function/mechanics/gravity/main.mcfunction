# prevent gravity from being added if the player is immune to gravity effects
execute if entity @s[tag=exp.ignores_gravity_effects] run return run execute if score @s exp.gravity_id matches 1.. run function expansion:mechanics/gravity/remove_all

# apply planet specific gravity
execute if predicate expansion:dimension/moon run return run execute unless score @s exp.gravity_id = #moon exp.gravity_id run return run function expansion:mechanics/gravity/moon
execute if predicate expansion:dimension/mars run return run execute unless score @s exp.gravity_id = #mars exp.gravity_id run return run function expansion:mechanics/gravity/mars
execute if predicate expansion:dimension/venus run return run execute unless score @s exp.gravity_id = #venus exp.gravity_id run return run function expansion:mechanics/gravity/venus
execute if predicate expansion:dimension/jupiter run return run execute unless score @s exp.gravity_id = #jupiter exp.gravity_id run return run function expansion:mechanics/gravity/jupiter
execute if predicate expansion:dimension/europa run return run execute unless score @s exp.gravity_id = #europa exp.gravity_id run return run function expansion:mechanics/gravity/europa
execute if predicate expansion:dimension/zero_gravity run return run execute unless score @s exp.gravity_id = #zero exp.gravity_id run return run function expansion:mechanics/gravity/zero/apply

# reset gravity if player is not in a dimension with altered gravity
function expansion:mechanics/gravity/remove_all