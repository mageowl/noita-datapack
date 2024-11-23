scoreboard players set @s noita.inscribing_table.has_output 0

execute unless items block ~ ~ ~ container.19 *[!custom_data~{custom_id:"noita:gui"}] run return 1
execute unless items block ~ ~ ~ container.20 *[!custom_data~{custom_id:"noita:gui"}] run return 1

data remove storage noita:temp spells
scoreboard players set total_mana_cost noita.vars 0
scoreboard players set total_cooldown noita.vars 0

execute if items block ~ ~ ~ container.0 *[!custom_data~{custom_id: "noita:gui"}] run function noita:inscribing_table/add_spell {slot: 0}
execute if items block ~ ~ ~ container.1 *[!custom_data~{custom_id: "noita:gui"}] run function noita:inscribing_table/add_spell {slot: 1}
execute if items block ~ ~ ~ container.2 *[!custom_data~{custom_id: "noita:gui"}] run function noita:inscribing_table/add_spell {slot: 2}
execute if items block ~ ~ ~ container.3 *[!custom_data~{custom_id: "noita:gui"}] run function noita:inscribing_table/add_spell {slot: 3}
execute if items block ~ ~ ~ container.4 *[!custom_data~{custom_id: "noita:gui"}] run function noita:inscribing_table/add_spell {slot: 4}
execute if items block ~ ~ ~ container.5 *[!custom_data~{custom_id: "noita:gui"}] run function noita:inscribing_table/add_spell {slot: 5}
execute if items block ~ ~ ~ container.6 *[!custom_data~{custom_id: "noita:gui"}] run function noita:inscribing_table/add_spell {slot: 6}
execute if items block ~ ~ ~ container.7 *[!custom_data~{custom_id: "noita:gui"}] run function noita:inscribing_table/add_spell {slot: 7}
execute if items block ~ ~ ~ container.8 *[!custom_data~{custom_id: "noita:gui"}] run function noita:inscribing_table/add_spell {slot: 8}

execute if data storage noita:temp spells[{null: true}] run return fail
execute unless data storage noita:temp spells[{}] run return 1

execute store result score max_mana_cost noita.vars run data get block ~ ~ ~ Items[{Slot: 19b}].components."minecraft:custom_data".noita.max_mana
execute if score total_mana_cost noita.vars > max_mana_cost noita.vars run return fail

execute if score total_cooldown noita.vars matches ..-1 run scoreboard players set total_cooldown noita.vars 0
execute if score total_mana_cost noita.vars matches ..-1 run scoreboard players set total_mana_cost noita.vars 0

execute store result storage noita:temp mana_cost int 1 run scoreboard players get total_mana_cost noita.vars
execute store result storage noita:temp cooldown int 0.2 run scoreboard players get total_cooldown noita.vars
execute store result storage noita:temp cooldown_sec double 0.01 run scoreboard players get total_cooldown noita.vars

scoreboard players set @s noita.inscribing_table.has_output 1

execute if items block ~ ~ ~ container.20 *[custom_data~{custom_id: "noita:blank_scroll"}] run item replace block ~ ~ ~ container.24 with warped_fungus_on_a_stick[ \
	item_name="Scroll", \
	custom_model_data=1, \
	custom_data={ \
		custom_id: "noita:spell_scroll", \
		noita: { \
			is_gui: true, \
		} \
	}, \
]
execute if items block ~ ~ ~ container.20 *[custom_data~{custom_id: "noita:blank_wand"}] run item replace block ~ ~ ~ container.24 with warped_fungus_on_a_stick[ \
	item_name="Wand", \
	custom_model_data=2, \
	custom_data={ \
		custom_id: "noita:wand", \
		noita: { \
			is_gui: true, \
		} \
	}, \
]

data modify block ~ ~ ~ Items[{Slot: 24b}].components."minecraft:custom_data".noita.spells set from storage noita:temp spells
data modify block ~ ~ ~ Items[{Slot: 24b}].components."minecraft:custom_data".noita.mana_cost set from storage noita:temp mana_cost
data modify block ~ ~ ~ Items[{Slot: 24b}].components."minecraft:custom_data".noita.cooldown set from storage noita:temp cooldown
function noita:inscribing_table/output/set_scroll_lore with storage noita:temp

return 1