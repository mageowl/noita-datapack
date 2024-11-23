fill ^ ^ ^-1 ^ ^ ^-1 fire replace #replaceable
execute at @e[tag=noita.target] run fill ~ ~ ~ ~ ~ ~ fire replace #replaceable
function noita:util/explosion/tiny {filter: "#noita:hard", block: "fire"}

particle flame ~ ~ ~ 0.5 0.5 0.5 0.5 10
particle explosion ~ ~ ~

playsound entity.generic.explode player @a ~ ~ ~ 2