# occasionally check if a match is still present
execute if entity @s[tag=exp.activated_portal] run function expansion:blocks/portal/active

# periodically checking for matches
execute unless entity @s[tag=exp.activated_portal] if score @s exp.hold_value matches 5 run function expansion:blocks/portal/activation/periodic_checkup