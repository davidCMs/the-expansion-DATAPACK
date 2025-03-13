function expansion:utilities/sounds/button
execute if items block ~ ~ ~ container.16 * run return fail

function expansion:blocks/assembler/recipes
execute if items entity @s contents * run function expansion:blocks/assembler/prepare_assembly

