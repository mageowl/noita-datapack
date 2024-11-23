execute unless entity @e[tag=noita.target] if entity @s[scores={noita.lifetime=1..}] run fill ^ ^ ^-1 ^ ^ ^-1 cobblestone replace #replaceable
execute unless entity @e[tag=noita.target] run playsound block.stone.place block @a ^ ^ ^-1
