#function expansion:vehicles/spaceship/transitions/transition_debug_step_1
execute if entity @s[scores={exp.x=0..,exp.z=0..}] in expansion:space run tp @a[tag=exp.transition_temp] -501 128 246 -45 0
execute if entity @s[scores={exp.x=0..,exp.z=..0}] in expansion:space run tp @a[tag=exp.transition_temp] -501 128 6 -135 0
execute if entity @s[scores={exp.x=..0,exp.z=0..}] in expansion:space run tp @a[tag=exp.transition_temp] -741 128 246 45 0
execute if entity @s[scores={exp.x=..0,exp.z=..0}] in expansion:space run tp @a[tag=exp.transition_temp] -741 128 6 135 0
