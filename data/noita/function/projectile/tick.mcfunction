$execute if score @s noita.projectile.ticks matches 0 run scoreboard players set @s noita.projectile.ticks $(tick_rate)
scoreboard players remove @s noita.projectile.ticks 1

$particle $(particle)
$tp ^ ^ ^$(speed)

# Rotate downwards if gravity
execute if entity @s[tag=noita.proj.gravity] at @s run tp @s ~ ~ ~ ~ ~5

# Teleport display entities
$execute if entity @s[tag=noita.proj.display_entity] at @s rotated as @s as @e[nbt={UUID: $(display)}] run tp @s ~ ~ ~ facing ^ ^ ^1

# Matter eatting
execute if entity @s[tag=noita.proj.matter_eat] at @s run clone ~-1 ~-1 ~-1 ~1 ~1 ~1 to noita:void 0 0 1 filtered #noita:unbreakable move
execute if entity @s[tag=noita.proj.matter_eat] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air destroy
execute if entity @s[tag=noita.proj.matter_eat] at @s run clone from noita:void 0 0 1 3 3 4 ~-1 ~-1 ~-1 filtered #noita:unbreakable move

# Tick function
$execute if entity @s[tag=noita.proj.tick] at @s run function $(on_tick)

# Lifetime
$execute as @s[scores={noita.lifetime=1}] run function $(on_hit)
$execute as @s[scores={noita.lifetime=1}, tag=noita.proj.display_entity] run kill @e[nbt={UUID: $(display)}]
execute as @s[scores={noita.lifetime=1}] run return 1

# Destroy projectiles too far away from players
$execute as @s[tag=noita.proj.display_entity] unless entity @a[distance=..100] run kill @e[nbt={UUID: $(display)}]
execute as @s[] unless entity @a[distance=..100] run kill

# Hit block
execute at @s unless block ~ ~ ~ #replaceable run tag @s add noita.hit
$execute at @s[tag=noita.hit] run function $(on_hit)
$execute at @s[tag=noita.hit] if entity @s[tag=noita.proj.display_entity] run kill @e[nbt={UUID: $(display)}]
execute at @s[tag=noita.hit] run kill
execute at @s[tag=noita.hit] run return 1

# Prevent hitting oneself
execute if entity @s[tag=noita.proj.tick1] run return 1

# Hit entity
execute at @s run tag @e[dx=0.5, dy=0.5, dz=0.5, limit=1] add noita.target
execute at @s if entity @e[tag=noita.target] store result entity @s data.damage int 1 run scoreboard players get @s noita.projectile.damage
execute at @s if entity @e[tag=noita.target] run function noita:projectile/hit_entity with entity @s data

tag @e[tag=noita.target] remove noita.target

# Tick again if tick rate > 1
execute if score @s noita.projectile.ticks matches 1.. at @s run function noita:projectile/tick with entity @s data