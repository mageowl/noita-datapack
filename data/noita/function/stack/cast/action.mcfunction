data modify storage noita:temp fn set value "noita:casting_item/fail"
data modify storage noita:temp fn set from entity @s data.spells[0].fn
data remove entity @s data.spells[0]
function noita:util/call with storage noita:temp