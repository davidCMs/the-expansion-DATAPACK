execute positioned ^ ^-1 ^ run summon item_display ^-1.69 ^2.1 ^ {Silent:1b,item_display:"head",Tags:["exp.core_port","exp.port_1","exp.portal_stand","smithed.block","the_expansion"],brightness:{block:15,sky:0},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.7f,0.7f,0.7f]}}
execute positioned ^ ^-1 ^ run summon minecraft:item_display ^-1.2 ^3.3 ^ {Silent:1b,item_display:head,Tags:["exp.core_port","exp.port_2","exp.portal_stand","smithed.block","the_expansion"],brightness:{block:15,sky:0},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0.0f,0f,-0.382f,0.924f],translation:[0f,0f,0f],scale:[0.7f,0.7f,0.7f]}}
execute positioned ^ ^-1 ^ run summon minecraft:item_display ^ ^3.8 ^ {Silent:1b,item_display:head,Tags:["exp.core_port","exp.port_3","exp.portal_stand","smithed.block","the_expansion"],brightness:{block:15,sky:0},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.7f,0.7f,0.7f]}}
execute positioned ^ ^-1 ^ run summon minecraft:item_display ^1.2 ^3.3 ^ {Silent:1b,item_display:head,Tags:["exp.core_port","exp.port_4","exp.portal_stand","smithed.block","the_expansion"],brightness:{block:15,sky:0},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0.0f,0f,0.382f,0.924f],translation:[0f,0f,0f],scale:[0.7f,0.7f,0.7f]}}
execute positioned ^ ^-1 ^ run summon minecraft:item_display ^1.69 ^2.1 ^ {Silent:1b,item_display:head,Tags:["exp.core_port","exp.port_5","exp.portal_stand","smithed.block","the_expansion"],brightness:{block:15,sky:0},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.7f,0.7f,0.7f]}}

execute positioned ^ ^-1 ^ run summon minecraft:interaction ^ ^3.5 ^ {Tags:["exp.portal_core_rcdet","smithed.block","the_expansion"],width:0.6,height:0.6,response:1b}
execute positioned ^ ^-1 ^ run summon minecraft:interaction ^1.758 ^1.8 ^ {Tags:["exp.portal_core_rcdet","smithed.block","the_expansion"],width:0.6,height:0.6,response:1b}
execute positioned ^ ^-1 ^ run summon minecraft:interaction ^-1.758 ^1.8 ^ {Tags:["exp.portal_core_rcdet","smithed.block","the_expansion"],width:0.6,height:0.6,response:1b}
execute positioned ^ ^-1 ^ run summon minecraft:interaction ^-1.2 ^3.0 ^ {Tags:["exp.portal_core_rcdet","smithed.block","the_expansion"],width:0.6,height:0.6,response:1b}
execute positioned ^ ^-1 ^ run summon minecraft:interaction ^1.2 ^3.0 ^ {Tags:["exp.portal_core_rcdet","smithed.block","the_expansion"],width:0.6,height:0.6,response:1b}

summon minecraft:item_display ~ ~-1 ~ {Rotation:[0f,0f],Tags:["exp.portal_display","the_expansion"],item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":1012605}}}
data merge entity @n[type=minecraft:item_display,tag=exp.portal_display,distance=..5] {transformation:{translation:[0.0f,2.01f,0.0f],scale:[2f,2f,2f]}}
data modify entity @n[type=minecraft:item_display,tag=exp.portal_display,distance=..5] Rotation[0] set from entity @s Rotation[0]

summon minecraft:interaction ~ ~-1 ~ {Tags:["exp.portal_rcdet","smithed.block","the_expansion"],height:1.1f,width:1.1f,response:1b}

## doesnt tick
execute as @e[type=minecraft:item_display,tag=exp.core_port,distance=..5,limit=5,sort=nearest] run data modify entity @s Rotation[0] set from entity @e[type=minecraft:armor_stand,tag=exp.portal_main,distance=..5,limit=1,sort=nearest] Rotation[0]

fill ^-1 ^-1 ^ ^1 ^-1 ^ minecraft:barrier keep
