execute at @s run summon item ~ ~ ~ {Item:{id:"minecraft:glass"},Tags:["noita.new"]}
$item replace entity @e[tag=noita.new, limit=1] contents from $(source)
tag @e[tag=noita.new] remove noita.new