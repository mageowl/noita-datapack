execute if items block ~ ~ ~ container.0 *[!custom_data~{custom_id: "noita:gui"}] run \
	data modify block ~ ~ ~ Items[{Slot: 24b}].components."minecraft:lore" append from block ~ ~ ~ Items[{Slot: 0b}].components."minecraft:custom_data".noita.spell.name
execute if items block ~ ~ ~ container.1 *[!custom_data~{custom_id: "noita:gui"}] run \
	data modify block ~ ~ ~ Items[{Slot: 24b}].components."minecraft:lore" append from block ~ ~ ~ Items[{Slot: 1b}].components."minecraft:custom_data".noita.spell.name
execute if items block ~ ~ ~ container.2 *[!custom_data~{custom_id: "noita:gui"}] run \
	data modify block ~ ~ ~ Items[{Slot: 24b}].components."minecraft:lore" append from block ~ ~ ~ Items[{Slot: 2b}].components."minecraft:custom_data".noita.spell.name
execute if items block ~ ~ ~ container.3 *[!custom_data~{custom_id: "noita:gui"}] run \
	data modify block ~ ~ ~ Items[{Slot: 24b}].components."minecraft:lore" append from block ~ ~ ~ Items[{Slot: 3b}].components."minecraft:custom_data".noita.spell.name
execute if items block ~ ~ ~ container.4 *[!custom_data~{custom_id: "noita:gui"}] run \
	data modify block ~ ~ ~ Items[{Slot: 24b}].components."minecraft:lore" append from block ~ ~ ~ Items[{Slot: 4b}].components."minecraft:custom_data".noita.spell.name
execute if items block ~ ~ ~ container.5 *[!custom_data~{custom_id: "noita:gui"}] run \
	data modify block ~ ~ ~ Items[{Slot: 24b}].components."minecraft:lore" append from block ~ ~ ~ Items[{Slot: 5b}].components."minecraft:custom_data".noita.spell.name
execute if items block ~ ~ ~ container.6 *[!custom_data~{custom_id: "noita:gui"}] run \
	data modify block ~ ~ ~ Items[{Slot: 24b}].components."minecraft:lore" append from block ~ ~ ~ Items[{Slot: 6b}].components."minecraft:custom_data".noita.spell.name
execute if items block ~ ~ ~ container.7 *[!custom_data~{custom_id: "noita:gui"}] run \
	data modify block ~ ~ ~ Items[{Slot: 24b}].components."minecraft:lore" append from block ~ ~ ~ Items[{Slot: 7b}].components."minecraft:custom_data".noita.spell.name
execute if items block ~ ~ ~ container.8 *[!custom_data~{custom_id: "noita:gui"}] run \
	data modify block ~ ~ ~ Items[{Slot: 24b}].components."minecraft:lore" append from block ~ ~ ~ Items[{Slot: 8b}].components."minecraft:custom_data".noita.spell.name

data modify block ~ ~ ~ Items[{Slot: 24b}].components."minecraft:lore" append value '""'
data modify block ~ ~ ~ Items[{Slot: 24b}].components."minecraft:lore" append value '[{"text": "When cast: ", "color": "gray", "italic": false}]'
$data modify block ~ ~ ~ Items[{Slot: 24b}].components."minecraft:lore" append value '{"text": " $(mana_cost) XP Cost", "color": "blue", "italic": false}'
$data modify block ~ ~ ~ Items[{Slot: 24b}].components."minecraft:lore" append value '{"text": " $(cooldown_sec)s Cooldown", "color": "blue", "italic": false}'