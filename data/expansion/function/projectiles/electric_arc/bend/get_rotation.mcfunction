# get the initial rotation data from the entity so we can keep track of this to avoid any data get rotation checks
data modify storage expansion:rotation Rotation set from entity @s Rotation

execute store result score @s exp.yaw run data get storage expansion:rotation Rotation[0]
execute store result score @s exp.pitch run data get storage expansion:rotation Rotation[1]