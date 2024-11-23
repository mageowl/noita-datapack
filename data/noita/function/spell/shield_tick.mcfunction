particle dust{color: [0.608, 0.98, 0.98], scale: 1.0} ~ ~ ~ 1 1 1 0 10
execute if entity @e[tag=noita.projectile, distance=0..2] run playsound item.shield.block player @a ~ ~ ~
kill @e[tag=noita.projectile, distance=0..2]