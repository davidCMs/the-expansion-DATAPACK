# assign scores to players without a room
scoreboard players reset @s exp.room_id
execute store result score @s exp.room_id run data get entity @s ArmorItems[3].tag.room_id
execute unless score @s exp.room_id matches 1.. run function expansion:items/transporter/first_transport/scores

# summon armor stand that will regulate the teleport
execute as @p[tag=exp.transporting] run summon minecraft:armor_stand ~ ~ ~ {Tags:["exp.room_position","exp.position_new"],Marker:1b,Invisible:1b,ArmorItems:[{"id":"minecraft:stick",Count:1b},{},{},{}]}

# cosmetics
execute at @e[type=armor_stand,tag=exp.room_origin,limit=1,sort=nearest] run particle minecraft:squid_ink ~ ~1 ~ 0.5 0.5 0.5 0.2 50
execute at @e[type=armor_stand,tag=exp.room_origin,limit=1,sort=nearest] run particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.2 50
playsound entity.lightning_bolt.impact player @a ~ ~ ~

# run the function that determines the position of the room and teleport the player there
execute as @e[type=armor_stand,tag=exp.room_position,limit=1,sort=nearest] run function expansion:items/transporter/transport


