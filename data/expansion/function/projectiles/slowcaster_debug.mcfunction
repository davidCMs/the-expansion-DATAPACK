# if this entity is a slowcaster, succeed
execute if entity @s[type=#expansion:slowcasters] run return 1

# else, send a message and fail
say Run this function as a slowcaster (masker, item display, snowball, armor stand)
return fail