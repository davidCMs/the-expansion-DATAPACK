scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.fabricator.export_version dummy
scoreboard objectives add aj.fabricator.rig_loaded dummy
scoreboard objectives add aj.fabricator.animation.printer.print.local_anim_time dummy
scoreboard objectives add aj.fabricator.animation.printer.print.loop_mode dummy
scoreboard players set $aj.fabricator.animation.printer.print aj.id 0
scoreboard players set $aj.fabricator.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.default_interpolation_duration aj.i 1
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.fabricator.export_version aj.i 220313602
scoreboard players reset * aj.fabricator.rig_loaded
execute as @e[type=#fabricator:aj_root,tag=aj.fabricator.root] run function zzz_fabricator_internal:on_load