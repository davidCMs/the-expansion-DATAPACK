# stop any actions that are togglable (drills and miniguns)
tag @s[tag=exp.mech_action_toggle] add exp.mech_action_stop

# start any action (based on what the mech is holding in the corresponding hand)
tag @s[tag=!exp.mech_action] add exp.mech_action