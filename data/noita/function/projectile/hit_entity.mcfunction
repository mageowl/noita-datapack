$function $(on_hit)
$execute if score @s noita.projectile.damage matches 1.. as @e[tag=noita.target] run damage @s $(damage) $(damage_type) by @e[nbt={UUID: $(caster)}, limit=1]
$execute as @s[tag=!noita.proj.piercing, tag=noita.proj.display_entity] run kill @e[nbt={UUID: $(display)}]
execute as @s[tag=!noita.proj.piercing] run kill