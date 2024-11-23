execute unless block ^ ^ ^1 #replaceable run return run function noita:casting_item/fail

$summon block_display ~ ~ ~ {Tags: ["noita.display"], block_state: {Name: "$(block_state)"}, transformation: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-0.5f,-0.5f],scale:[1f,1f,1f]}, $(block_data)}
$summon marker ~ ~ ~ {Tags: ["noita.projectile", "noita.proj.display_entity", "noita.proj.tick1", "noita.new", $(features)], data: {on_hit: "$(on_hit)", on_tick: "_", particle: "$(particle)", speed: $(speed), damage_type: "$(damage_type)", tick_rate: $(tick_rate)}}

data modify entity @e[tag=noita.new, limit=1] data.owner set from entity @s UUID
data modify entity @e[tag=noita.new, limit=1] data.display set from entity @e[tag=noita.display, limit=1] UUID

execute anchored feet run tp @e[tag=noita.new] ^ ^ ^-1 facing ~ ~ ~
tp @e[tag=noita.new] ^ ^ ^1.95

$scoreboard players set @e[tag=noita.new] noita.lifetime $(lifetime)
$scoreboard players set @e[tag=noita.new] noita.projectile.damage $(damage)
scoreboard players set @e[tag=noita.new] noita.projectile.ticks 0
function noita:stack/add_dependant with entity @s data

execute if data entity @s data.modifiers[0] run function noita:projectile/add_modifiers with entity @s data.modifiers[0]

tag @e[tag=noita.new] remove noita.new
tag @e[tag=noita.display] remove noita.display