# Put the portal animation on the head of the exp.portal armor stand. This item also stores all information in an array.
execute on passengers if entity @s[tag=exp.portal.warp_display] run data merge entity @s {transformation:{scale:[2.0f,2.0f,2.0f]},interpolation_duration:5,start_interpolation:-1}

playsound expansion:portal.activate ambient @a[distance=..16] ~ ~1.15 ~ 1
particle flash ~ ~1.15 ~
particle explosion ~ ~1.15 ~
particle end_rod ~ ~1.15 ~ 0 0 0 0.2 50

scoreboard players reset @s exp.timer_2

# Add tag
tag @s add exp.activated_portal
tag @s remove exp.paused_portal
