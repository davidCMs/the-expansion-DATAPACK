scoreboard players set @s exp.timer_1 200

data merge entity @s {transformation:{scale:[1,1,1]},interpolation_duration:200,start_interpolation:-1}

item replace block ~ ~ ~ container.0 with air
item replace block ~ ~ ~ container.1 with air
item replace block ~ ~ ~ container.2 with air
item replace block ~ ~ ~ container.3 with air
item replace block ~ ~ ~ container.4 with air

item replace block ~ ~ ~ container.9 with air
item replace block ~ ~ ~ container.10 with air
item replace block ~ ~ ~ container.11 with air
item replace block ~ ~ ~ container.12 with air
item replace block ~ ~ ~ container.13 with air

item replace block ~ ~ ~ container.18 with air
item replace block ~ ~ ~ container.19 with air
item replace block ~ ~ ~ container.20 with air
item replace block ~ ~ ~ container.21 with air
item replace block ~ ~ ~ container.22 with air

execute on passengers if entity @s[tag=aj.assembler.root] run function animated_java:assembler/animations/ring_loop/play