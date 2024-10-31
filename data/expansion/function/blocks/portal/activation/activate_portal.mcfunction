# Put the portal animation on the head of the exp.portal_main armor stand. This item also stores all information in an array.
data modify entity @s ArmorItems[3].components."minecraft:custom_model_data" set value 1012604

playsound expansion:portal.activate ambient @a[distance=..10] ~ ~ ~ 1
particle flash ~ ~1.2 ~
particle explosion ~ ~1.2 ~
particle end_rod ~ ~1.2 ~ 0 0 0 0.2 50

scoreboard players reset @s exp.timer_2

# Add tag
tag @s add exp.activated_portal
tag @s remove exp.paused_portal
