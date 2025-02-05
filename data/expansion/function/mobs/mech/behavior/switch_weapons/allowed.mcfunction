say check
# fail if the mech is jumping
execute if score @s exp.jump matches 1 run return fail

return 1