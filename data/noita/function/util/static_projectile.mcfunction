$summon marker ^ ^ ^ {Tags: ["noita.static_projectile", "noita.new", $(features)], data: {on_tick: "$(on_tick)", on_timeout: "$(on_timeout)"}}
tp @e[tag=noita.new] ^ ^ ^0.1 ~ ~

data modify entity @e[tag=noita.new, limit=1] data.owner set from entity @s UUID

$scoreboard players set @e[tag=noita.new] noita.lifetime $(lifetime)

function noita:stack/add_dependant with entity @s data

tag @e[tag=noita.new] remove noita.new