# occasionally check if a match is still present
execute at @s if entity @s[tag=exp.activated_portal] run function expansion:blocks/portal/active

# periodically checking for matches
execute at @s unless entity @s[tag=exp.activated_portal] if score @s exp.hold_value matches 5 run function expansion:blocks/portal/activation/periodic_checkup