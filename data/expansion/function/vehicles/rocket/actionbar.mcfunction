# calculate the fuel percentage
function expansion:utilities/fuel_percentage

# store rockets position
function expansion:utilities/store_pos_in_score

# prepare the actionbar text in storage
data merge storage expansion:temp {actionbar:{position:[[{text:"◀",color:"green"},{score:{name:"@s",objective:"exp.x"}},{text:"%▶"}],[{text:"◀",color:"green"},{score:{name:"@s",objective:"exp.y"}},{text:"%▶"}],[{text:"◀",color:"green"},{score:{name:"@s",objective:"exp.z"}},{text:"%▶"}]],fuel:[{text:"◀",color:"green"},{score:{name:"@s",objective:"exp.fuel_percentage"}},{text:"%▶"}]}}

# change the color of the oxygen percentage and indicate a missing tank
execute if score @s exp.fuel_percentage matches 10..49 run data modify storage expansion:temp actionbar.fuel[0].color set value "gold"
execute if score @s exp.fuel_percentage matches 0..9 run data modify storage expansion:temp actionbar.fuel[0].color set value "red"

# display the title
title @p[tag=exp.inside_rocket] actionbar [{"translate":"exp_screentxt_position_actionbar"},{"storage":"expansion:temp","nbt": "actionbar.position", "interpret": true, "bold": true},{"text":"    "},{"translate":"exp_screentxt_fuel_actionbar"},{"storage":"expansion:temp","nbt": "actionbar.fuel", "interpret": true, "bold": true}]