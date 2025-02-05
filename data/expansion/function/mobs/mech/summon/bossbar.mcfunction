bossbar add exp.mech "Haywired Mecha"
execute store result bossbar exp.mech value run scoreboard players get @s exp.health
execute store result bossbar exp.mech max run scoreboard players get @s exp.health
bossbar set exp.mech visible true
bossbar set exp.mech players @a[distance=..1000]