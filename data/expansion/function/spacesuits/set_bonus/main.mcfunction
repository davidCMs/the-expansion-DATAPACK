# run set bonus functions based on the armor set
execute if predicate expansion:armor/diver/set run return run function expansion:spacesuits/set_bonus/diver
execute if predicate expansion:armor/nasa/set run return run function expansion:spacesuits/set_bonus/nasa
execute if predicate expansion:armor/trooper/set run return run function expansion:spacesuits/set_bonus/trooper
execute if predicate expansion:armor/hazmat/set run return run function expansion:spacesuits/set_bonus/hazmat
execute if predicate expansion:armor/pilot/set run return run function expansion:spacesuits/set_bonus/pilot
execute if predicate expansion:armor/golem/set run return run function expansion:spacesuits/set_bonus/golem
