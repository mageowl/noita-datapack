data modify storage noita:temp uuid set from entity @s data.owner
function noita:util/get_uuid with storage noita:temp
data remove storage noita:temp uuid

execute as @e[tag=noita.uuid, limit=1] run function noita:stack/cast
playsound ui.button.click player @a ~ ~ ~ 2 0.8