execute if entity @e[tag=noita.target] run playsound entity.player.burp player @a ~ ~ ~
execute as @e[tag=noita.target,type=minecraft:parrot] run effect give @s minecraft:poison 2
execute as @e[tag=noita.target,type=minecraft:parrot] run kill
execute as @e[tag=noita.target,type=minecraft:player] run effect give @s minecraft:saturation 2
execute as @e[tag=noita.target,type=!minecraft:player] run effect give @s minecraft:instant_health