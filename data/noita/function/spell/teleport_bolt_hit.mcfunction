data modify storage noita:temp uuid set from entity @s data.caster
function noita:util/get_uuid with storage noita:temp
data remove storage noita:temp uuid

tp @e[tag=noita.uuid] ~ ~-1 ~
execute unless block ~ ~-1 ~ #replaceable run tp @e[tag=noita.uuid] ^ ^-1 ^
execute unless block ^ ^-1 ^ #replaceable run tp @e[tag=noita.uuid] ~ ~2 ~

playsound entity.enderman.teleport player @a ~ ~ ~
particle portal ~ ~1 ~ 0 0 0 1 20