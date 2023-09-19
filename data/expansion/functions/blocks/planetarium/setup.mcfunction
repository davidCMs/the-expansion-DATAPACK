# place the main block
tag @s add exp.block
tag @s add exp.planetarium_part
tag @s add smithed.block
item replace entity @s armor.head with carrot_on_a_stick{CustomModelData:1012303}

# generate a new unique id
scoreboard players add #planetarium_id exp.unique_id 1
scoreboard players operation @s exp.unique_id = #planetarium_id exp.unique_id

# give the centered armor stands a rotation such that the planets are not all in one straight line
execute on passengers run function expansion:blocks/planetarium/initialize_pivots

# summon the planet armor stands. these armor stands represent the planets and will determine the rotation of every planet
summon minecraft:item_display ~ ~ ~ {Tags:["exp.mini_sun","exp.planetarium_part","exp.planetarium_display","smithed.block"],brightness:{sky:15,block:15},CustomNameVisible:0b,CustomName:'{"text":"","italic":false}',item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;29464294,160580508,-1779136758,1804506042],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWMzNzgzMmM0MTM1MjU1NTU1M2Q4NmFhYWUxMzQxOTMzMWUzYWRlOTk3YmNlMGI4MTEzN2Q1MjA0ZTRjZGU3ZSJ9fX0="}]}}}}}
summon minecraft:item_display ~ ~ ~ {Tags:["exp.mini_mercury","exp.planetarium_part","exp.planetarium_display","smithed.block"],brightness:{sky:15,block:15},CustomNameVisible:0b,CustomName:'{"text":"","italic":false}',item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;497550848,1749895286,-1496956169,382266798],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzE3OGYyMzU3NjhlZDJmMGYxYTA3YWIwMmI5MmY1OTljYzQyYzc0MWQyZjczM2U1MzY4YjVhMTA0ODRiM2NiIn19fQ=="}]}}}}}
summon minecraft:item_display ~ ~ ~ {Tags:["exp.mini_venus","exp.planetarium_part","exp.planetarium_display","smithed.block"],brightness:{sky:15,block:15},CustomNameVisible:0b,CustomName:'{"text":"","italic":false}',item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1264346548,-236565845,-1805961568,-2023379790],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMGVmMTQ3ZGRjOTA4ZTY4MjVjMjI5OTk3YWE1Mjk3NjFmNTE2OTFhMTFjOTU1MTI5YTIzMzYzMmQ1NTQ4NzVlIn19fQ=="}]}}}}}
summon minecraft:item_display ~ ~ ~ {Tags:["exp.mini_earth","exp.planetarium_part","exp.planetarium_display","smithed.block"],brightness:{sky:15,block:15},Passengers:[{id:"minecraft:marker",Tags:["exp.planetarium_moon","exp.planetarium_part","exp.planetarium_pivot","smithed.block"]}],CustomNameVisible:0b,CustomName:'{"text":"","italic":false}',item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;162119669,710429448,-1690736789,-84268047],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzY5MTk2YjMzMGM2Yjg5NjJmMjNhZDU2MjdmYjZlY2NlNDcyZWFmNWM5ZDQ0Zjc5MWY2NzA5YzdkMGY0ZGVjZSJ9fX0="}]}}}}}
summon minecraft:item_display ~ ~ ~ {Tags:["exp.mini_mars","exp.planetarium_part","exp.planetarium_display","smithed.block"],brightness:{sky:15,block:15},Passengers:[{id:"minecraft:marker",Tags:["exp.planetarium_phobos","exp.planetarium_part","exp.planetarium_pivot","smithed.block"]},{id:"minecraft:marker",Tags:["exp.planetarium_deimos","exp.planetarium_part","exp.planetarium_pivot","smithed.block"]}],CustomNameVisible:0b,CustomName:'{"text":"","italic":false}',item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1973206117,-1615312043,-1354591611,1559144542],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDM3ODU3ZTE2OWVkMzdiMjQ4OTVjM2ZkZTQyNjJkYWU2ZTg3NDI4NjFlYjczZWRhMTU0M2NiNGMwM2E2N2UzIn19fQ=="}]}}}}}
summon minecraft:item_display ~ ~ ~ {Tags:["exp.mini_jupiter","exp.planetarium_part","exp.planetarium_display","smithed.block"],brightness:{sky:15,block:15},Passengers:[{id:"minecraft:marker",Tags:["exp.planetarium_europa","exp.planetarium_part","exp.planetarium_pivot","smithed.block"]},{id:"minecraft:marker",Tags:["exp.planetarium_callisto","exp.planetarium_part","exp.planetarium_pivot","smithed.block"]},{id:"minecraft:marker",Tags:["exp.planetarium_io","exp.planetarium_part","exp.planetarium_pivot","smithed.block"]},{id:"minecraft:marker",Tags:["exp.planetarium_ganymede","exp.planetarium_part","exp.planetarium_pivot","smithed.block"]}],CustomNameVisible:0b,CustomName:'{"text":"","italic":false}',item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1818032849,1012220503,-1426985022,-1815857567],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjhhYWE4YTM1NjFlODBlZjFmOTU2MWYxNzIxMWU3NzBkZTE4YTlmOThjMjY5MWVjZjlkNjk2NTU5YTFiOTE4YyJ9fX0="}]}}}}}
summon minecraft:item_display ~ ~ ~ {Tags:["exp.mini_saturn","exp.planetarium_part","exp.planetarium_display","smithed.block"],brightness:{sky:15,block:15},Passengers:[{id:"minecraft:marker",Tags:["exp.planetarium_titan","exp.planetarium_part","exp.planetarium_pivot","smithed.block"]}],CustomNameVisible:0b,CustomName:'{"text":"","italic":false}',item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1643968858,-988003845,-1979797039,252264402],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmZlN2EzMzA0MTc1ODQyNmQ5NDgzYzZlNmVjMGVhYzM0NTdkZmNlZjIyNzBlYTliZDQ4OTI3MGZiZGFmZDk5MyJ9fX0="}]}}}}}
summon minecraft:item_display ~ ~ ~ {Tags:["exp.mini_uranus","exp.planetarium_part","exp.planetarium_display","smithed.block"],brightness:{sky:15,block:15},CustomNameVisible:0b,CustomName:'{"text":"","italic":false}',item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1020908370,-1355593802,-1794245902,2123237746],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjdkODQ4Mjg5YjEwYjNmYWIyNDA3NzY0NGI1ZDgyNzUzODY3YmVjMzQ4Y2QyYmU3YjJiZDA2NGVmOWY3NzNlIn19fQ=="}]}}}}}
summon minecraft:item_display ~ ~ ~ {Tags:["exp.mini_neptune","exp.planetarium_part","exp.planetarium_display","smithed.block"],brightness:{sky:15,block:15},CustomNameVisible:0b,CustomName:'{"text":"","italic":false}',item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1395161631,1045580569,-1897395747,1315411436],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWE2ZGQ3NWY0MWU0MjY4ZTBhMTI2OTA1MDkwN2FhNjc0NmZmZDM3YTRhOTI5ZTczMjUyNDY0MmMzMzZiYyJ9fX0="}]}}}}}

# dwarf planets
summon minecraft:item_display ~ ~ ~ {Tags:["exp.mini_pluto","exp.planetarium_part","exp.planetarium_display","smithed.block"],brightness:{sky:15,block:15},CustomNameVisible:0b,CustomName:'{"text":"","italic":false}',item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1346160593,633751894,-1428310665,270855345],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjgxNzlhZjE4YjE2OWY2ODQzYTZkNzE3Y2M4MzkzNDNlYzEwMjExNzY3NWJiZGQxM2Y3ZjIxNTNmNDRlOTRhIn19fQ=="}]}}}}}
summon minecraft:item_display ~ ~ ~ {Tags:["exp.mini_ceres","exp.planetarium_part","exp.planetarium_display","smithed.block"],brightness:{sky:15,block:15},CustomNameVisible:0b,CustomName:'{"text":"","italic":false}',item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-631266373,1472612391,-1474859596,1072796252],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTU2NWNlMmJlZDVjODBmMTQ2MjJlN2FiMDk1Mzk0ZDIzMDNiNmNmYTJmNjg1ZTE0NTEyNTlhOGI4NWZhNThiOSJ9fX0="}]}}}}}

# moons
summon minecraft:item_display ~ ~ ~ {Tags:["exp.mini_moon","exp.planetarium_part","exp.planetarium_display","smithed.block"],brightness:{sky:15,block:15},CustomNameVisible:0b,CustomName:'{"text":"","italic":false}',item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;863215294,-1780921430,-1773460256,1982824210],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzAwYTFhN2JiMDdmZGI0ZTZhODZlMzQxODE2ZTg4NDNkZGFmN2NmMzcxM2EzNjY2ZDc0YjcyZjk4NjE5ZjA2MyJ9fX0="}]}}}}}
summon minecraft:item_display ~ ~ ~ {Tags:["exp.mini_deimos","exp.planetarium_part","exp.planetarium_display","smithed.block"],brightness:{sky:15,block:15},CustomNameVisible:0b,CustomName:'{"text":"","italic":false}',item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-194762286,486819807,-2144288488,-959250868],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2FlNDliZTQ4YWQ0MDljNzEyODU0NmQ1ZmQ4YTlmZGVmM2U5NDJlZWUzMzcyODA2MzcwMjlkMmI3NTAzYjNhNyJ9fX0="}]}}}}}
summon minecraft:item_display ~ ~ ~ {Tags:["exp.mini_phobos","exp.planetarium_part","exp.planetarium_display","smithed.block"],brightness:{sky:15,block:15},CustomNameVisible:0b,CustomName:'{"text":"","italic":false}',item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-331398384,-1206498907,-1419488031,878596434],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmMyNDQ3Y2JmYmZiZmJkMzM2NGMxM2I0NTE2MDI0MTg3MmZjOTAyZTE2MWY3YTI4MjE3YjU2NGViNmI0NjhkOCJ9fX0="}]}}}}}
summon minecraft:item_display ~ ~ ~ {Tags:["exp.mini_europa","exp.planetarium_part","exp.planetarium_display","smithed.block"],brightness:{sky:15,block:15},CustomNameVisible:0b,CustomName:'{"text":"","italic":false}',item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-557895298,-1753461310,-1486346832,-810130547],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjJiZjFlNDVlMzEwMTE1NjZjMDY1MWY0ZjNlMDI3YjU4M2M3NmVhNTE4ODBkNTRlNWQ3NDdjMzFiZDA3OTgwMSJ9fX0="}]}}}}}
summon minecraft:item_display ~ ~ ~ {Tags:["exp.mini_callisto","exp.planetarium_part","exp.planetarium_display","smithed.block"],brightness:{sky:15,block:15},CustomNameVisible:0b,CustomName:'{"text":"","italic":false}',item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;126237856,119554663,-1787617108,-8328413],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzE1YTYwNGFmZTcwNmZkYzQ4Y2NjMDEwODA0OTlkMjUwOTcwMGZhZmM1YjY3M2Y5Y2Q3ODM5MjhhYjY3NmRkMiJ9fX0="}]}}}}}
summon minecraft:item_display ~ ~ ~ {Tags:["exp.mini_io","exp.planetarium_part","exp.planetarium_display","smithed.block"],brightness:{sky:15,block:15},CustomNameVisible:0b,CustomName:'{"text":"","italic":false}',item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1051667258,806503820,-1832938165,214092137],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzIxOTIzMTU4ZTY1MDUxZDUyYTQ3NzkxYWEwYTBhMmI2YzFjODZmMmM0ZjdjMWQzZTgyMTA0Y2NiNGNiMjk4NCJ9fX0="}]}}}}}
summon minecraft:item_display ~ ~ ~ {Tags:["exp.mini_ganymede","exp.planetarium_part","exp.planetarium_display","smithed.block"],brightness:{sky:15,block:15},CustomNameVisible:0b,CustomName:'{"text":"","italic":false}',item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;771763285,1961574877,-2138075222,-1937973041],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTZhMzVlZmZlYWM3MmRmMzRiMWI4NjNlODdhMTA1NjE4YjMyNDc1NzlmMTJkZDFmMzA5Njg5OGM5MTU1OTU2NyJ9fX0="}]}}}}}
summon minecraft:item_display ~ ~ ~ {Tags:["exp.mini_titan","exp.planetarium_part","exp.planetarium_display","smithed.block"],brightness:{sky:15,block:15},CustomNameVisible:0b,CustomName:'{"text":"","italic":false}',item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1572509494,197542155,-1173593691,-1774600605],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzZkOWJmNWQ0Y2Q4YjY2NGU3ZjU1YzU4YjhlM2E0NjVmY2YyNjlmNmYyOTg1MDA1NWU3ODQyZGQ4MTAxODQxZSJ9fX0="}]}}}}}
summon minecraft:item_display ~ ~ ~ {Tags:["exp.mini_amogus","exp.planetarium_part","exp.planetarium_display","smithed.block"],brightness:{sky:15,block:15},CustomNameVisible:0b,CustomName:'{"text":"","italic":false}',item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;271085555,-1369226346,-1962137716,1831703791],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjRjMDllYzkwZmE0MmM2MDljNDNjNjQ5MGM2ZTM4NDYwZGMwZTExZDQ3ZjQ0MzAyNDljZWZlNjkzNGM4MTg1MCJ9fX0="}]}}}}}

summon item_display ~ ~ ~ {Tags:["exp.planetarium_comet","exp.mini_comet1","exp.planetarium_part","exp.planetarium_display","smithed.block"]}
summon item_display ~ ~ ~ {Tags:["exp.planetarium_comet","exp.mini_comet2","exp.planetarium_part","exp.planetarium_display","smithed.block"]}
summon item_display ~ ~ ~ {Tags:["exp.planetarium_comet","exp.mini_comet3","exp.planetarium_part","exp.planetarium_display","smithed.block"]}

# apply unique id to displays
execute as @e[type=item_display,tag=exp.planetarium_display,limit=24,sort=nearest] run function expansion:blocks/planetarium/initialize_models
