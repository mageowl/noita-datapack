summon creeper ^ ^ ^-0.1 {Tags: ["noita.new"], ExplosionRadius: -1b, Fuse: 0, ignited: true, Silent: true, Invunerable: true, PresistanceRequired: true, Team: "noita.no_collision"}
summon creeper ^ ^ ^-0.1 {Tags: ["noita.new"], ExplosionRadius: -1b, Fuse: 0, ignited: true, Silent: true, Invunerable: true, PresistanceRequired: true, Team: "noita.no_collision"}

# execute as @e[tag=noita.new] run data modify entity @s Pos[1] set from entity @e[tag=noita.target, limit=1] Pos[1]
# execute at @e[tag=noita.new] run tp ~ ~-0.5 ~

tag @e[tag=noita.new] remove noita.new
schedule function noita:spell/launch_stopsound 1t
