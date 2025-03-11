# fail if this module slot doesn't exist
execute unless data storage expansion:temp ModStorage[0] run return fail

# fail if there already is a module in the equipment
execute if data storage expansion:temp ModStorage[0].id run return fail

return 1