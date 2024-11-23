tag @e[tag=noita.target] remove noita.target
tag @s add noita.target
scoreboard players reset @s noita.use_stick

execute store result score xp_cost noita.vars run data get entity @s SelectedItem.components."minecraft:custom_data".noita.mana_cost
execute unless function noita:casting_item/wand/apply_xp_cost run return fail

execute store result score @s noita.max_cooldown run data get entity @s SelectedItem.components."minecraft:custom_data".noita.cooldown
execute store result score @s noita.cooldown run data get entity @s SelectedItem.components."minecraft:custom_data".noita.cooldown

summon marker ~ ~ ~ {Tags: ["noita.stack", "noita.new"], data: {modifiers: []}}
data modify entity @e[tag=noita.new, limit=1] data.spells set from entity @s SelectedItem.components."minecraft:custom_data".noita.spells
data modify entity @e[tag=noita.new, limit=1] data.owner set from entity @s UUID
execute store result entity @e[tag=noita.new, limit=1] data.pid int 1 run scoreboard players get @s noita.pid
execute store result entity @e[tag=noita.new, limit=1] data.id int 1 run scoreboard players add stack_uid noita.vars 1

# this removes the new tag
execute anchored eyes positioned ^ ^ ^ as @e[tag=noita.new] run function noita:stack/cast

tag @s remove noita.target