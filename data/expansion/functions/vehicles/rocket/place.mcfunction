function expansion:vehicles/rocket/summon_rocket
item replace entity @e[type=armor_stand,tag=exp.rocket,limit=1,sort=nearest] armor.head from entity @s weapon.mainhand
execute store result score @e[type=armor_stand,tag=exp.rocket,limit=1,sort=nearest] exp.fuel_level run data get entity @s SelectedItem.tag.fuel_lvl
scoreboard players set @e[type=armor_stand,tag=exp.rocket,limit=1,sort=nearest] exp.fuel_max 640
