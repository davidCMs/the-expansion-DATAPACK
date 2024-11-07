item replace entity @s container.0 from entity @p[tag=exp.clicked] weapon.mainhand expansion:portal/count_to_1

item modify entity @p[tag=exp.clicked] weapon.mainhand expansion:utility/reduce_count

execute at @s unless items block ~ ~-1 ~ container.4 * on vehicle run scoreboard players set @s exp.timer_1 100