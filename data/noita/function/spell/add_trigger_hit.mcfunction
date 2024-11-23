$function $(next)

data modify storage noita:temp uuid set from entity @s data.owner
function noita:util/get_uuid with storage noita:temp
data remove storage noita:temp uuid
execute as @e[tag=noita.uuid, limit=1] unless block ~ ~ ~ #replaceable rotated ~ ~-45 run function noita:stack/cast
execute as @e[tag=noita.uuid, limit=1] if block ~ ~ ~ #replaceable run function noita:stack/cast