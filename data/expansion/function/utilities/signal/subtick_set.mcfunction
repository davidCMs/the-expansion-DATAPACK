# used for setting a bool value so other entities can get its value without entity checks
# only use for subtick signals, caution is advised
say subtick set
scoreboard players reset #signal exp.bool
scoreboard players set #signal exp.bool 1