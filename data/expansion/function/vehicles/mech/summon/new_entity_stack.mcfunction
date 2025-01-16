execute if entity @s[y_rotation=-135.1..-45] run summon minecraft:armor_stand ^ ^ ^ {Silent:1b,NoAI:1b,Invulnerable:1b,Invisible:1b,Rotation:[90f,0f],Tags:["exp.mech","exp.new_vehicle","exp.vehicle","exp.moddable_vehicle","smithed.block"],ArmorItems:[{},{},{},{id:"minecraft:jigsaw",count:1,components:{"minecraft:item_model":"expansion:empty"}}],Passengers:[{id:"minecraft:marker",Tags:["exp.movedir"]},{id:"minecraft:cat",Tags:["exp.mech_seat"],NoAI:1b,Silent:1b,Invulnerable:1b,active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:-1,show_particles:0b}]},{id:"minecraft:interaction",Tags:["exp.mech_rcdet","smithed.block"],width:1.5,height:2f,response:0b}]}
execute if entity @s[y_rotation=45.1..135] run summon minecraft:armor_stand ^ ^ ^ {Silent:1b,NoAI:1b,Invulnerable:1b,Invisible:1b,Rotation:[270f,0f],Tags:["exp.mech","exp.new_vehicle","exp.vehicle","exp.moddable_vehicle","smithed.block"],ArmorItems:[{},{},{},{id:"minecraft:jigsaw",count:1,components:{"minecraft:item_model":"expansion:empty"}}],Passengers:[{id:"minecraft:marker",Tags:["exp.movedir"]},{id:"minecraft:cat",Tags:["exp.mech_seat"],NoAI:1b,Silent:1b,Invulnerable:1b,active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:-1,show_particles:0b}]},{id:"minecraft:interaction",Tags:["exp.mech_rcdet","smithed.block"],width:1.5,height:2f,response:0b}]}
execute if entity @s[y_rotation=-45..45] run summon minecraft:armor_stand ^ ^ ^ {Silent:1b,NoAI:1b,Invulnerable:1b,Invisible:1b,Rotation:[180f,0f],Tags:["exp.mech","exp.new_vehicle","exp.vehicle","exp.moddable_vehicle","smithed.block"],ArmorItems:[{},{},{},{id:"minecraft:jigsaw",count:1,components:{"minecraft:item_model":"expansion:empty"}}],Passengers:[{id:"minecraft:marker",Tags:["exp.movedir"]},{id:"minecraft:cat",Tags:["exp.mech_seat"],NoAI:1b,Silent:1b,Invulnerable:1b,active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:-1,show_particles:0b}]},{id:"minecraft:interaction",Tags:["exp.mech_rcdet","smithed.block"],width:1.5,height:2f,response:0b}]}
execute if entity @s[y_rotation=135.1..-135] run summon minecraft:armor_stand ^ ^ ^ {Silent:1b,NoAI:1b,Invulnerable:1b,Invisible:1b,Rotation:[0f,0f],Tags:["exp.mech","exp.new_vehicle","exp.vehicle","exp.moddable_vehicle","smithed.block"],ArmorItems:[{},{},{},{id:"minecraft:jigsaw",count:1,components:{"minecraft:item_model":"expansion:empty"}}],Passengers:[{id:"minecraft:marker",Tags:["exp.movedir"]},{id:"minecraft:cat",Tags:["exp.mech_seat"],NoAI:1b,Silent:1b,Invulnerable:1b,active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:-1,show_particles:0b}]},{id:"minecraft:interaction",Tags:["exp.mech_rcdet","smithed.block"],width:1.5,height:2f,response:0b}]}

# summon the animated java rigs
execute positioned ~ ~1.48 ~ rotated as @e[type=armor_stand,tag=exp.mech,limit=1,sort=nearest] run function animated_java:mech_legs/summon {args: {}}
execute positioned ~ ~1.48 ~ rotated as @e[type=armor_stand,tag=exp.mech,limit=1,sort=nearest] run function animated_java:mech_torso/summon {args:{variant: 'empty_both'}}

# mount the animated java rigs to the entity stack
ride @e[type=item_display,tag=aj.mech_legs.root,limit=1,sort=nearest] mount @e[type=armor_stand,tag=exp.mech,limit=1,sort=nearest]
ride @e[type=item_display,tag=aj.mech_torso.root,limit=1,sort=nearest] mount @e[type=armor_stand,tag=exp.mech,limit=1,sort=nearest]

scoreboard players reset #temp exp.mech_left_id
scoreboard players reset #temp exp.mech_right_id
execute store result score #temp exp.mech_left_id run data get entity @s SelectedItem.components.minecraft:custom_data.mech_left_id
execute store result score #temp exp.mech_right_id run data get entity @s SelectedItem.components.minecraft:custom_data.mech_right_id
execute as @e[type=armor_stand,tag=exp.mech,limit=1,sort=nearest] run function expansion:vehicles/mech/summon/equip_modules