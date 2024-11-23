execute unless block ^ ^ ^1 #replaceable run return run function noita:casting_item/fail

$summon marker ~ ~ ~ {Tags: ["noita.projectile", "noita.proj.tick1", "noita.new", $(features)], data: {on_hit: "$(on_hit)", on_tick: "_", particle: "$(particle)", speed: $(speed), display: false, damage_type: "$(damage_type)", tick_rate: $(tick_rate)}}

data modify entity @e[tag=noita.new, limit=1] data.caster set from entity @s data.owner
data modify entity @e[tag=noita.new, limit=1] data.owner set from entity @s UUID

execute anchored feet run tp @e[tag=noita.new] ^ ^ ^-1 facing ~ ~ ~
tp @e[tag=noita.new] ^ ^ ^1.95

$scoreboard players set @e[tag=noita.new] noita.lifetime $(lifetime)
$scoreboard players set @e[tag=noita.new] noita.projectile.damage $(damage)
$scoreboard players set @e[tag=noita.new] noita.projectile.ticks $(tick_rate)
function noita:stack/add_dependant with entity @s data

execute if data entity @s data.modifiers[0] run function noita:projectile/add_modifiers with entity @s data.modifiers[0]

tag @e[tag=noita.new] remove noita.new