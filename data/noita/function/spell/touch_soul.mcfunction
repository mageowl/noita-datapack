playsound minecraft:entity.wither.shoot player @a ~ ~ ~ 0.5 0.8
particle minecraft:soul ~ ~ ~ 2 2 2 0 20

function noita:util/explosion_replace/large {block: "soul_sand", filter: "#sand"}
function noita:util/explosion_replace/large {block: "soul_soil", filter: "#dirt"}
function noita:util/explosion_replace/large {block: "netherrack", filter: "stone"}
function noita:util/explosion_replace/large {block: "blackstone", filter: "cobblestone"}