summon minecraft:pig ~ ~ ~ {Tags:["aj.mech_torso.locator","aj.mech_torso.locator.locator","aj.new"],CustomName:"[{\"text\":\"[\",\"color\":\"gray\"},{\"text\":\"AJ\",\"color\":\"aqua\"},\"] \",[\"\",{\"text\":\"mech_torso\",\"color\":\"light_purple\"},\".\",{\"text\":\"locatorEntity\",\"color\":\"white\"},\"[\",{\"text\":\"locator\",\"color\":\"yellow\"},\"]\"]]"}
execute as @e[type=minecraft:pig,tag=aj.mech_torso.locator.locator,tag=aj.new,limit=1,distance=..1] run function animated_java:mech_torso/zzzzzzzz/summon/locator_locator/as_entity
data modify entity @s Owner set from storage animated_java Owner
data remove storage animated_java Owner