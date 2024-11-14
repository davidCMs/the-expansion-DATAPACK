execute as @n[type=minecraft:interaction,tag=exp.transporter_rcdet,nbt={attack:{}},distance=..10] on vehicle run function expansion:blocks/transporter/pick_up
data remove entity @n[type=minecraft:interaction,tag=exp.transporter_rcdet,nbt={attack:{}},distance=..10] attack
advancement revoke @s only expansion:utility/transporter_lc