data modify storage noita:temp uuid set from entity @s data.owner
function noita:util/get_uuid with storage noita:temp
data remove storage noita:temp uuid

execute as @e[tag=noita.uuid, limit=1] unless block ~ ~ ~ #replaceable rotated ~ ~-45 run function noita:stack/cast
execute as @e[tag=noita.uuid, limit=1] if block ~ ~ ~ #replaceable run function noita:stack/cast

particle dust_color_transition{from_color: [0.6, 1.0, 1.0], to_color: [0.9, 0.8, 0.3], scale: 1.0} ~ ~ ~ 0.5 0.5 0.5 2 10
playsound block.amethyst_block.resonate player @a ~ ~ ~ 2