# Only suffocate in places where you would lose oxygen
execute unless function expansion:mechanics/oxygen/should_lose_oxygen run return fail

# suffocate if your oxygen level is below 1
execute unless score @s exp.oxygen_lvl matches 1.. run return 1

return fail