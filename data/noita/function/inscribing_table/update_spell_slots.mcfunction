execute if score @s noita.inscribing_table.spell_slots matches 1..9 as @p run function noita:util/give_from {source: "block ~ ~ ~ container.0"}
execute if score @s noita.inscribing_table.spell_slots matches 2..9 as @p run function noita:util/give_from {source: "block ~ ~ ~ container.1"}
execute if score @s noita.inscribing_table.spell_slots matches 3..9 as @p run function noita:util/give_from {source: "block ~ ~ ~ container.2"}
execute if score @s noita.inscribing_table.spell_slots matches 4..9 as @p run function noita:util/give_from {source: "block ~ ~ ~ container.3"}
execute if score @s noita.inscribing_table.spell_slots matches 5..9 as @p run function noita:util/give_from {source: "block ~ ~ ~ container.4"}
execute if score @s noita.inscribing_table.spell_slots matches 6..9 as @p run function noita:util/give_from {source: "block ~ ~ ~ container.5"}
execute if score @s noita.inscribing_table.spell_slots matches 7..9 as @p run function noita:util/give_from {source: "block ~ ~ ~ container.6"}
execute if score @s noita.inscribing_table.spell_slots matches 8..9 as @p run function noita:util/give_from {source: "block ~ ~ ~ container.7"}
execute if score @s noita.inscribing_table.spell_slots matches 9 as @p run function noita:util/give_from {source: "block ~ ~ ~ container.8"}

summon armor_stand 0 0 0 {Tags:["noita.temp"],Invulnerable:true}
item replace entity @e[tag=noita.temp,limit=1] weapon.mainhand from block ~ ~ ~ container.19
execute store result score @s noita.inscribing_table.spell_slots run data get entity @e[tag=noita.temp,limit=1] HandItems[0].components."minecraft:custom_data".noita.spell_slots

execute if score @s noita.inscribing_table.spell_slots matches 1..9 run item replace block ~ ~ ~ container.0 with black_stained_glass_pane[custom_model_data=3,max_stack_size=1,hide_tooltip={},custom_data={custom_id:"noita:gui",noita:{is_gui: true}}]
execute unless score @s noita.inscribing_table.spell_slots matches 1..9 run item replace block ~ ~ ~ container.0 with black_stained_glass_pane[custom_model_data=4,max_stack_size=1,hide_tooltip={},custom_data={custom_id:"noita:gui",noita:{is_gui: true}}]
execute if score @s noita.inscribing_table.spell_slots matches 2..9 run item replace block ~ ~ ~ container.1 with black_stained_glass_pane[custom_model_data=3,max_stack_size=1,hide_tooltip={},custom_data={custom_id:"noita:gui",noita:{is_gui: true}}]
execute unless score @s noita.inscribing_table.spell_slots matches 2..9 run item replace block ~ ~ ~ container.1 with black_stained_glass_pane[custom_model_data=4,max_stack_size=1,hide_tooltip={},custom_data={custom_id:"noita:gui",noita:{is_gui: true}}]
execute if score @s noita.inscribing_table.spell_slots matches 3..9 run item replace block ~ ~ ~ container.2 with black_stained_glass_pane[custom_model_data=3,max_stack_size=1,hide_tooltip={},custom_data={custom_id:"noita:gui",noita:{is_gui: true}}]
execute unless score @s noita.inscribing_table.spell_slots matches 3..9 run item replace block ~ ~ ~ container.2 with black_stained_glass_pane[custom_model_data=4,max_stack_size=1,hide_tooltip={},custom_data={custom_id:"noita:gui",noita:{is_gui: true}}]
execute if score @s noita.inscribing_table.spell_slots matches 4..9 run item replace block ~ ~ ~ container.3 with black_stained_glass_pane[custom_model_data=3,max_stack_size=1,hide_tooltip={},custom_data={custom_id:"noita:gui",noita:{is_gui: true}}]
execute unless score @s noita.inscribing_table.spell_slots matches 4..9 run item replace block ~ ~ ~ container.3 with black_stained_glass_pane[custom_model_data=4,max_stack_size=1,hide_tooltip={},custom_data={custom_id:"noita:gui",noita:{is_gui: true}}]
execute if score @s noita.inscribing_table.spell_slots matches 5..9 run item replace block ~ ~ ~ container.4 with black_stained_glass_pane[custom_model_data=3,max_stack_size=1,hide_tooltip={},custom_data={custom_id:"noita:gui",noita:{is_gui: true}}]
execute unless score @s noita.inscribing_table.spell_slots matches 5..9 run item replace block ~ ~ ~ container.4 with black_stained_glass_pane[custom_model_data=4,max_stack_size=1,hide_tooltip={},custom_data={custom_id:"noita:gui",noita:{is_gui: true}}]
execute if score @s noita.inscribing_table.spell_slots matches 6..9 run item replace block ~ ~ ~ container.5 with black_stained_glass_pane[custom_model_data=3,max_stack_size=1,hide_tooltip={},custom_data={custom_id:"noita:gui",noita:{is_gui: true}}]
execute unless score @s noita.inscribing_table.spell_slots matches 6..9 run item replace block ~ ~ ~ container.5 with black_stained_glass_pane[custom_model_data=4,max_stack_size=1,hide_tooltip={},custom_data={custom_id:"noita:gui",noita:{is_gui: true}}]
execute if score @s noita.inscribing_table.spell_slots matches 7..9 run item replace block ~ ~ ~ container.6 with black_stained_glass_pane[custom_model_data=3,max_stack_size=1,hide_tooltip={},custom_data={custom_id:"noita:gui",noita:{is_gui: true}}]
execute unless score @s noita.inscribing_table.spell_slots matches 7..9 run item replace block ~ ~ ~ container.6 with black_stained_glass_pane[custom_model_data=4,max_stack_size=1,hide_tooltip={},custom_data={custom_id:"noita:gui",noita:{is_gui: true}}]
execute if score @s noita.inscribing_table.spell_slots matches 8..9 run item replace block ~ ~ ~ container.7 with black_stained_glass_pane[custom_model_data=3,max_stack_size=1,hide_tooltip={},custom_data={custom_id:"noita:gui",noita:{is_gui: true}}]
execute unless score @s noita.inscribing_table.spell_slots matches 8..9 run item replace block ~ ~ ~ container.7 with black_stained_glass_pane[custom_model_data=4,max_stack_size=1,hide_tooltip={},custom_data={custom_id:"noita:gui",noita:{is_gui: true}}]
execute if score @s noita.inscribing_table.spell_slots matches 9 run item replace block ~ ~ ~ container.8 with black_stained_glass_pane[custom_model_data=3,max_stack_size=1,hide_tooltip={},custom_data={custom_id:"noita:gui",noita:{is_gui: true}}]
execute unless score @s noita.inscribing_table.spell_slots matches 9 run item replace block ~ ~ ~ container.8 with black_stained_glass_pane[custom_model_data=4,max_stack_size=1,hide_tooltip={},custom_data={custom_id:"noita:gui",noita:{is_gui: true}}]

kill @e[tag=noita.temp]
