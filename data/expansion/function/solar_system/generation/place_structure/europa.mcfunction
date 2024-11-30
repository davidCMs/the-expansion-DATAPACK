# place structure
place structure expansion:planets/europa ~ ~ ~

# reset score
scoreboard players reset #generate_europa exp.bool

# remove forceload
function expansion:solar_system/generation/clean_area

# after the entire sequence, lock the solar system generation on future reloads and notify the players
function expansion:solar_system/generation/finish