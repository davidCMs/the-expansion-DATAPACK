data modify storage expansion:temp Pos set from entity @s Pos
execute store result score @s exp.x run data get storage expansion:temp Pos[0]
execute store result score @s exp.y run data get storage expansion:temp Pos[1]
execute store result score @s exp.z run data get storage expansion:temp Pos[2]
data remove storage expansion:temp Pos