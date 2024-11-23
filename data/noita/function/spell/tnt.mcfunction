summon marker ~ ~ ~ {Tags: ["noita.new", "noita.temp"], data: {on_hit: "_", on_tick: "_", speed: 0.7, display: false, damage_type: "explosion"}}
scoreboard players set @e[tag=noita.new] noita.lifetime 60
scoreboard players set @e[tag=noita.new] noita.projectile.damage 3

execute if data entity @s data.modifiers[0] run function noita:projectile/add_modifiers with entity @s data.modifiers[0]

tag @e[tag=noita.new] remove noita.new
summon tnt ^ ^ ^3 {Tags: ["noita.new"], Team: "noita.no_collision"}

function noita:util/get_look_dir with entity @e[tag=noita.temp, limit=1] data
data modify entity @e[tag=noita.new,limit=1] Motion set from entity @e[tag=noita.pos, limit=1] Pos
execute store result entity @e[tag=noita.new,limit=1] fuse short 1 run scoreboard players get @e[tag=noita.temp, limit=1] noita.lifetime

tag @e[tag=noita.new] remove noita.new
kill @e[tag=noita.temp]
kill @e[tag=noita.pos]