summon minecraft:villager ~ ~ ~ {Tags:["exp.space_trader","smithed.entity"],CustomNameVisible:0b,CustomName:'{"text":"San Holo"}',VillagerData:{level:99,profession:"minecraft:nitwit",type:"minecraft:plains"},ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:item_model":"expansion:armor/trader_helmet"}}]}
execute as @e[type=minecraft:villager,tag=exp.space_trader,distance=..0.1,limit=1,sort=nearest] run function expansion:mobs/space_trader/insert_trades