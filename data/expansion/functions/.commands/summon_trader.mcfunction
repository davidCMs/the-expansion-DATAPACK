summon villager ~ ~ ~ {Tags:["exp.space_trader","smithed.entity"],CustomNameVisible:0b,CustomName:'{"text":"San Holo"}',VillagerData:{level:99,profession:"minecraft:nitwit",type:"minecraft:plains"},ActiveEffects:[{Id:8,Amplifier:3b,Duration:999999999,ShowParticles:0b},{Id:28,Amplifier:1b,Duration:999999999,ShowParticles:0b}],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1012116}}]}
execute as @e[type=villager,tag=exp.space_trader,limit=1,sort=nearest] run function expansion:mobs/space_trader/insert_trades