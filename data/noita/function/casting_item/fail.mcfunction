data modify storage noita:temp uuid set from entity @s data.owner
function noita:util/get_uuid with storage noita:temp
data remove storage noita:temp uuid

playsound minecraft:block.note_block.didgeridoo master @e[tag=noita.uuid,type=player] ^ ^ ^1 1 0.7
playsound minecraft:block.fire.extinguish master @e[tag=noita.uuid,type=player] ^ ^ ^1 1 1.5
particle dust{color:[1.0, 0.2, 0.5],scale:1.1} ^ ^ ^1 0.1 0.1 0.1 0 10 force @e[tag=noita.uuid,type=player]