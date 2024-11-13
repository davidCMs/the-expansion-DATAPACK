# provide entities that were hit by the wave with oxygen
# and remove entities from the oxygen supply if they werent hit by the wave
execute on passengers if entity @s[tag=exp.oxygen_link] run function expansion:blocks/oxygenator/oxygenate/oxygen_link/check

# give the oxygenator a tag that it will keep until a scan fails. This is to give players that enter an already exp.pressurized base immediate access to oxygen
execute unless entity @s[tag=exp.pressurized] run function expansion:blocks/oxygenator/oxygenate/scan/first_success

# prepare the oxygenator for another scan so the scanning loops as long as it is successfull
scoreboard players set @s exp.timer_1 1