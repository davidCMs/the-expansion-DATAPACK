# get the desired alignment of the to-be-placed entity
function expansion:blocks/determine_rotation

# place blocks
execute if predicate expansion:nbt_checks/selected_item/blocks/block run return run function expansion:blocks/place

# place vehicles
execute if predicate expansion:nbt_checks/selected_item/vehicles/vehicle run return run function expansion:vehicles/place