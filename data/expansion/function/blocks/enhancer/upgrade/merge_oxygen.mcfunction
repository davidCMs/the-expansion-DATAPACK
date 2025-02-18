## Find and merge the total oxygen parameters for the equipment, this repeats for each oxygen tank.
function expansion:items/space_equipment/get_percentage_from_storage

# merge the percenmtage with the equipment
item modify block ~ ~ ~ container.10 expansion:oxygen_tank/merge_with_equipment