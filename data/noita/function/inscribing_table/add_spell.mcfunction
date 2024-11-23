$data modify storage noita:temp spells append from block ~ ~ ~ Items[{Slot: $(slot)b}].components."minecraft:custom_data".noita.spell
$execute store result score mana_cost noita.vars run data get block ~ ~ ~ Items[{Slot: $(slot)b}].components."minecraft:custom_data".noita.spell.mana_cost
$execute store result score cooldown noita.vars run data get block ~ ~ ~ Items[{Slot: $(slot)b}].components."minecraft:custom_data".noita.spell.cooldown 100
scoreboard players operation total_mana_cost noita.vars += mana_cost noita.vars
scoreboard players operation total_cooldown noita.vars += cooldown noita.vars