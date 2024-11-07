# remove one count from all the 9 crafting slots
function expansion:utilities/barrel/remove_crafting_items

# set the print time, this is synchronised with the animation time
scoreboard players set @s exp.timer_1 50

rotate @s ~ 90
data merge entity @s {transformation:{scale:[0.5,0.5,0.5]},interpolation_duration:50,start_interpolation:-1}

# start the animation
execute on passengers if entity @s[tag=aj.fabricator.root] run function animated_java:fabricator/animations/printer_print/play