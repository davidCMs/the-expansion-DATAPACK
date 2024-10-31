scoreboard players add @s exp.timer_2 1

item replace entity @s armor.head with minecraft:carrot_on_a_stick[minecraft:custom_model_data=1012199]

# Create a unique ID for every portal which increments every time a new portal is activated. exp.counter_1 is the ID scoreboard for the portals.
function expansion:blocks/portal/activation/assign_id

# create the portal array and 'upload' it to the global portal array
function expansion:blocks/portal/activation/create_array