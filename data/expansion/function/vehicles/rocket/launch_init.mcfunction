# check for an obsidian launchpad
execute unless function expansion:vehicles/rocket/has_launchpad on passengers if entity @s[tag=exp.rocket_seat] on passengers if entity @s[type=player] run return run function expansion:utilities/error_messages/launchpad

# check if the player is wearing space equipment
execute on passengers if entity @s[tag=exp.rocket_seat] on passengers if entity @s[type=player] unless entity @s[predicate=expansion:armor/all] run return run function expansion:utilities/error_messages/equip_space_equipment

# check if the rocket is fully fueled
execute unless score @s exp.fuel_level = @s exp.fuel_max on passengers if entity @s[tag=exp.rocket_seat] on passengers if entity @s[type=player] run return run function expansion:utilities/error_messages/low_fuel

# if all else succeeds, start the launch
scoreboard players set @s exp.timer_2 230
