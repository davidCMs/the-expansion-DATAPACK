# initiate the cooldown score when first going through a portal
execute unless score @s exp.portal_cooldown matches 0.. run scoreboard players set @s exp.portal_cooldown 0

# continue to teleportation if the score is 0
execute if score @s exp.portal_cooldown matches 0 run function expansion:blocks/portal/teleport/teleportation_stage_0