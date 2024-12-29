# general tags
tag @s add exp.planetarium_pivot
tag @s add exp.planetarium_part
tag @s add smithed.block
execute on passengers run tag @s add exp.planetarium_part

# for each pivot summon a display
execute if entity @s[tag=exp.sun_pivot] run summon item_display ~ ~ ~ {Tags:["exp.mini_sun","exp.new_planet_display"],Passengers:[{id:"minecraft:snowball",Item:{id:"minecraft:jigsaw",components:{item_model:"expansion:empty"}}},{id:"minecraft:interaction",Tags:["exp.planet_hitbox"],response:1b}]}
execute if entity @s[tag=exp.earth_pivot] run summon item_display ~ ~ ~ {Tags:["exp.mini_earth","exp.new_planet_display"],Passengers:[{id:"minecraft:text_display",alignment:"center",Tags:["exp.earth_infoboard","exp.planetarium_infoboard","exp.infoboard_left"]},{id:"minecraft:text_display",alignment:"center",Tags:["exp.earth_infoboard","exp.planetarium_infoboard","exp.infoboard_right"]},{id:"minecraft:snowball",Item:{id:"minecraft:jigsaw",components:{item_model:"expansion:empty"}}},{id:"minecraft:interaction",Tags:["exp.planet_hitbox","planetarium_part"],response:1b},{id:"minecraft:text_display","alignment":"center",Tags:["exp.planetarium_text_display","exp.earth_name"],text:'{"color":"#03FF13","text":" Earth ","bold": true}'}]}
execute if entity @s[tag=exp.moon_pivot] run summon item_display ~ ~ ~ {Tags:["exp.mini_moon","exp.new_planet_display"],Passengers:[{id:"minecraft:text_display",alignment:"center",Tags:["exp.moon_infoboard","exp.planetarium_infoboard","exp.infoboard_left"]},{id:"minecraft:text_display",alignment:"center",Tags:["exp.moon_infoboard","exp.planetarium_infoboard","exp.infoboard_right"]},{id:"minecraft:snowball",Item:{id:"minecraft:jigsaw",components:{item_model:"expansion:empty"}}},{id:"minecraft:interaction",Tags:["exp.planet_hitbox","planetarium_part"],response:1b},{id:"minecraft:text_display","alignment":"center",Tags:["exp.planetarium_text_display","exp.moon_name"],text:'{"color":"#b3b3b3","text":"The Moon","bold": true}'}]}
execute if entity @s[tag=exp.mars_pivot] run summon item_display ~ ~ ~ {Tags:["exp.mini_mars","exp.new_planet_display"],Passengers:[{id:"minecraft:text_display",alignment:"center",Tags:["exp.mars_infoboard","exp.planetarium_infoboard","exp.infoboard_left"]},{id:"minecraft:text_display",alignment:"center",Tags:["exp.mars_infoboard","exp.planetarium_infoboard","exp.infoboard_right"]},{id:"minecraft:snowball",Item:{id:"minecraft:jigsaw",components:{item_model:"expansion:empty"}}},{id:"minecraft:interaction",Tags:["exp.planet_hitbox","planetarium_part"],response:1b},{id:"minecraft:text_display","alignment":"center",Tags:["exp.planetarium_text_display","exp.mars_name"],text:'{"color":"#ff3e03","text":" Mars ","bold": true}'}]}
execute if entity @s[tag=exp.venus_pivot] run summon item_display ~ ~ ~ {Tags:["exp.mini_venus","exp.new_planet_display"],Passengers:[{id:"minecraft:text_display",alignment:"center",Tags:["exp.venus_infoboard","exp.planetarium_infoboard","exp.infoboard_left"]},{id:"minecraft:text_display",alignment:"center",Tags:["exp.venus_infoboard","exp.planetarium_infoboard","exp.infoboard_right"]},{id:"minecraft:snowball",Item:{id:"minecraft:jigsaw",components:{item_model:"expansion:empty"}}},{id:"minecraft:interaction",Tags:["exp.planet_hitbox","planetarium_part"],response:1b},{id:"minecraft:text_display","alignment":"center",Tags:["exp.planetarium_text_display","exp.venus_name"],text:'{"color":"#ffa703","text":" Venus ","bold": true}'}]}
execute if entity @s[tag=exp.jupiter_pivot] run summon item_display ~ ~ ~ {Tags:["exp.mini_jupiter","exp.new_planet_display"],Passengers:[{id:"minecraft:text_display",alignment:"center",Tags:["exp.jupiter_infoboard","exp.planetarium_infoboard","exp.infoboard_left"]},{id:"minecraft:text_display",alignment:"center",Tags:["exp.jupiter_infoboard","exp.planetarium_infoboard","exp.infoboard_right"]},{id:"minecraft:snowball",Item:{id:"minecraft:jigsaw",components:{item_model:"expansion:empty"}}},{id:"minecraft:interaction",Tags:["exp.planet_hitbox","planetarium_part"],response:1b},{id:"minecraft:text_display","alignment":"center",Tags:["exp.planetarium_text_display","exp.jupiter_name"],text:'{"color":"#ff8903","text":" Jupiter ","bold": true}'}]}
execute if entity @s[tag=exp.europa_pivot] run summon item_display ~ ~ ~ {Tags:["exp.mini_europa","exp.new_planet_display"],Passengers:[{id:"minecraft:text_display",alignment:"center",Tags:["exp.europa_infoboard","exp.planetarium_infoboard","exp.infoboard_left"]},{id:"minecraft:text_display",alignment:"center",Tags:["exp.europa_infoboard","exp.planetarium_infoboard","exp.infoboard_right"]},{id:"minecraft:snowball",Item:{id:"minecraft:jigsaw",components:{item_model:"expansion:empty"}}},{id:"minecraft:interaction",Tags:["exp.planet_hitbox","planetarium_part"],response:1b},{id:"minecraft:text_display","alignment":"center",Tags:["exp.planetarium_text_display","exp.europa_name"],text:'{"color":"#e9cccc","text":" Europa ","bold": true}'}]}

# summon three meteors, there is only one pivot
execute if entity @s[tag=exp.meteor_pivot1] run summon item_display ~ ~ ~ {Tags:["exp.mini_meteor","exp.new_planet_display","exp.planetarium_freemove"],Rotation:[0.0f,0.0f],Passengers:[{id:"minecraft:snowball",Item:{id:"minecraft:jigsaw",components:{item_model:"expansion:empty"}}}]}

# small ship for funz
execute if entity @s[tag=exp.ship_pivot] run summon item_display ~ ~ ~ {Tags:["exp.mini_ship","exp.new_planet_display","exp.planetarium_freemove"],Rotation:[270.0f,0.0f],Passengers:[{id:"minecraft:snowball",Item:{id:"minecraft:jigsaw",components:{item_model:"expansion:empty"}}}]}
execute if entity @s[tag=exp.drone1_pivot] run summon item_display ~ ~ ~ {Tags:["exp.mini_drone1","exp.new_planet_display","exp.planetarium_freemove"],Rotation:[90.0f,0.0f],Passengers:[{id:"minecraft:snowball",Item:{id:"minecraft:jigsaw",components:{item_model:"expansion:empty"}}}]}
execute if entity @s[tag=exp.drone2_pivot] run summon item_display ~ ~ ~ {Tags:["exp.mini_drone2","exp.new_planet_display","exp.planetarium_freemove"],Rotation:[180.0f,0.0f],Passengers:[{id:"minecraft:snowball",Item:{id:"minecraft:jigsaw",components:{item_model:"expansion:empty"}}}]}

# make the sun pivot the root
execute if entity @s[tag=exp.sun_pivot] run function expansion:blocks/planetarium/set_root
tag @s[tag=exp.sun_pivot] add exp.true_pivot

# make snowballs invisible
execute on passengers run data merge entity @s[type=snowball] {Item:{id:"minecraft:jigsaw",components:{item_model:"expansion:empty"}}}
# link the snowballs of all the nodes
data modify storage expansion:planetarium_pivot data.current_UUID set from entity @s UUID
function expansion:blocks/planetarium/prepare/link_pivot_to_model
data remove storage expansion:planetarium_pivot data

# initialize the displays
execute on passengers if entity @s[type=snowball] on origin run function expansion:blocks/planetarium/prepare/initialize_models