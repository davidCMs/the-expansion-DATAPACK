scoreboard players set @e[type=armor_stand,tag=exp.mech,distance=..0.1,limit=1] exp.health 50
bossbar add exp.mech "Haywired Mecha"
execute store result bossbar exp.mech value run scoreboard players get @e[type=armor_stand,tag=exp.mech,distance=..0.1,limit=1] exp.health
execute store result bossbar exp.mech max run scoreboard players get @e[type=armor_stand,tag=exp.mech,distance=..0.1,limit=1] exp.health
bossbar set exp.mech visible true
bossbar set exp.mech players @a[distance=..1000]