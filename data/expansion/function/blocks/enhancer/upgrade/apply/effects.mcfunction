# 'Iterate' over the upgrades and apply their effects (if any) to the equipment
data modify storage expansion:temp Module set from storage expansion:temp ModStorage[0]
function expansion:blocks/enhancer/upgrade/apply/module_effects
data modify storage expansion:temp Module set from storage expansion:temp ModStorage[1]
function expansion:blocks/enhancer/upgrade/apply/module_effects
data modify storage expansion:temp Module set from storage expansion:temp ModStorage[2]
function expansion:blocks/enhancer/upgrade/apply/module_effects
data modify storage expansion:temp Module set from storage expansion:temp ModStorage[3]
function expansion:blocks/enhancer/upgrade/apply/module_effects