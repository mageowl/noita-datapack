item modify block ~ ~ ~ container.0 noita:decrease
item modify block ~ ~ ~ container.1 noita:decrease
item modify block ~ ~ ~ container.2 noita:decrease
item modify block ~ ~ ~ container.3 noita:decrease
item modify block ~ ~ ~ container.4 noita:decrease
item modify block ~ ~ ~ container.5 noita:decrease
item modify block ~ ~ ~ container.6 noita:decrease
item modify block ~ ~ ~ container.7 noita:decrease
item modify block ~ ~ ~ container.8 noita:decrease

item modify block ~ ~ ~ container.19 noita:decrease
item modify block ~ ~ ~ container.20 noita:decrease
summon item ~ ~1 ~ {Item: {id:"minecraft:glass_bottle"}}

execute unless items block ~ ~ ~ container.19 * run function noita:inscribing_table/update_spell_slots