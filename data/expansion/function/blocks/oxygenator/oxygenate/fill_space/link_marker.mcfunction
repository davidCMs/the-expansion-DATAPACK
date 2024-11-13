ride @s mount @e[type=item_display,tag=exp.oxygenator,distance=..0.01,limit=1]

# count the total number of oxygenated blocks
execute on vehicle run scoreboard players add @s exp.hold_count 1

tag @s add exp.new_scanner_link
tag @s add exp.scanner_link

function expansion:utilities/snowball_link/link_from_storage