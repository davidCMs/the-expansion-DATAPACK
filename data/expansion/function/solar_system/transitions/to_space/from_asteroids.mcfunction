function expansion:utilities/weather/disable_weather

execute on passengers if entity @s[type=armor_stand,tag=exp.spaceship_display] run function expansion:solar_system/transitions/to_space/store_exit_coord

execute in expansion:space run tp @s -3800 128 ~ -90 0

