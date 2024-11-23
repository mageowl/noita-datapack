execute if items block ~ ~ ~ container.0 *[!custom_data~{custom_id: "noita:gui"}] if score @s noita.inscribing_table.spell_slots matches 1..9 run item modify block ~ ~ ~ container.0 noita:mark_gui
execute if items block ~ ~ ~ container.1 *[!custom_data~{custom_id: "noita:gui"}] if score @s noita.inscribing_table.spell_slots matches 2..9 run item modify block ~ ~ ~ container.1 noita:mark_gui
execute if items block ~ ~ ~ container.2 *[!custom_data~{custom_id: "noita:gui"}] if score @s noita.inscribing_table.spell_slots matches 3..9 run item modify block ~ ~ ~ container.2 noita:mark_gui
execute if items block ~ ~ ~ container.3 *[!custom_data~{custom_id: "noita:gui"}] if score @s noita.inscribing_table.spell_slots matches 4..9 run item modify block ~ ~ ~ container.3 noita:mark_gui
execute if items block ~ ~ ~ container.4 *[!custom_data~{custom_id: "noita:gui"}] if score @s noita.inscribing_table.spell_slots matches 5..9 run item modify block ~ ~ ~ container.4 noita:mark_gui
execute if items block ~ ~ ~ container.5 *[!custom_data~{custom_id: "noita:gui"}] if score @s noita.inscribing_table.spell_slots matches 6..9 run item modify block ~ ~ ~ container.5 noita:mark_gui
execute if items block ~ ~ ~ container.6 *[!custom_data~{custom_id: "noita:gui"}] if score @s noita.inscribing_table.spell_slots matches 7..9 run item modify block ~ ~ ~ container.6 noita:mark_gui
execute if items block ~ ~ ~ container.7 *[!custom_data~{custom_id: "noita:gui"}] if score @s noita.inscribing_table.spell_slots matches 8..9 run item modify block ~ ~ ~ container.7 noita:mark_gui
execute if items block ~ ~ ~ container.8 *[!custom_data~{custom_id: "noita:gui"}] if score @s noita.inscribing_table.spell_slots matches 9 run item modify block ~ ~ ~ container.8 noita:mark_gui

execute if items block ~ ~ ~ container.19 *[custom_data~{custom_id: "noita:ink_bottle"}, !custom_data~{noita:{is_gui: true}}] run function noita:inscribing_table/update_spell_slots
execute if items block ~ ~ ~ container.19 *[custom_data~{custom_id: "noita:ink_bottle"}, !custom_data~{noita:{is_gui: true}}] run item modify block ~ ~ ~ container.19 noita:mark_gui
execute if items block ~ ~ ~ container.20 *[custom_data~{custom_id: "noita:blank_scroll"}] run item modify block ~ ~ ~ container.20 noita:mark_gui
execute if items block ~ ~ ~ container.20 *[custom_data~{custom_id: "noita:blank_wand"}] run item modify block ~ ~ ~ container.20 noita:mark_gui

execute if items block ~ ~ ~ container.* *[!custom_data~{noita: {is_gui: true}}] run function noita:inscribing_table/clean

execute unless items block ~ ~ ~ container.24 * if score @s noita.inscribing_table.has_output matches 1 run function noita:inscribing_table/output/remove_output

item replace block ~ ~ ~ container.22 with black_stained_glass_pane[custom_model_data=2,max_stack_size=1,hide_tooltip={},custom_data={custom_id:"noita:gui",noita:{is_gui: true}}]
item replace block ~ ~ ~ container.24 with black_stained_glass_pane[custom_model_data=3,max_stack_size=1,hide_tooltip={},custom_data={custom_id:"noita:gui",noita:{is_gui: true}}]
execute unless function noita:inscribing_table/output/update_output run item replace block ~ ~ ~ container.22 with black_stained_glass_pane[custom_model_data=7,max_stack_size=1,hide_tooltip={},custom_data={custom_id:"noita:gui",noita:{is_gui: true}}]