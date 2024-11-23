$function $(fn) with entity @e[tag=noita.new,limit=1] data

data remove entity @s data.modifiers[0]
execute if data entity @s data.modifiers[0] run function noita:projectile/add_modifiers with entity @s data.modifiers[0]