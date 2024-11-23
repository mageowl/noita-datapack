# Projectiles
execute as @e[tag=noita.projectile] at @s run function noita:projectile/tick with entity @s data
execute as @e[tag=noita.static_projectile] at @s run function noita:projectile/static_tick with entity @s data
tag @e[tag=noita.proj.tick1] remove noita.proj.tick1

# Casting Items
execute as @a[scores={noita.use_stick=1..,noita.cooldown=..0}] if items entity @s weapon.mainhand *[custom_data~{custom_id: "noita:spell_scroll"}] at @s run function noita:casting_item/scroll/use
execute as @a[scores={noita.use_stick=1..,noita.cooldown=..0}] if items entity @s weapon.offhand *[custom_data~{custom_id: "noita:spell_scroll"}] at @s run function noita:casting_item/scroll/use_offhand
execute as @a[scores={noita.use_stick=1..,noita.cooldown=..0}] if items entity @s weapon.mainhand *[custom_data~{custom_id: "noita:wand"}] at @s run function noita:casting_item/wand/use
execute as @a[scores={noita.use_stick=1..,noita.cooldown=..0}] if items entity @s weapon.offhand *[custom_data~{custom_id: "noita:wand"}] at @s run function noita:casting_item/wand/use_offhand

# Cooldown
execute as @a[scores={noita.cooldown=2..}] run function noita:casting_item/display_cooldown
execute as @a[scores={noita.cooldown=1}] run title @s actionbar ""
scoreboard players remove @e[scores={noita.cooldown=1..}] noita.cooldown 1

# Spell Stacks
execute as @e[tag=noita.stack] run function noita:stack/tick with entity @s data
execute unless entity @e[tag=noita.stack] run scoreboard players set stack_uid noita.vars 0

# Inscribing Table
execute as @e[tag=noita.inscribing_table,tag=!noita.init] at @s run function noita:inscribing_table/make
execute as @e[tag=noita.inscribing_table] at @s run function noita:inscribing_table/tick
clear @a *[custom_data~{custom_id:"noita:gui"}]

# GUI Items
execute as @a if items entity @s hotbar.* *[custom_data~{noita:{is_gui:true}}] run function noita:inscribing_table/unmark_gui/hotbar
execute as @a if items entity @s inventory.* *[custom_data~{noita:{is_gui:true}}] run function noita:inscribing_table/unmark_gui/inventory
execute as @a if items entity @s weapon.offhand *[custom_data~{noita:{is_gui:true}}] run item modify entity @s weapon.offhand noita:unmark_gui
execute as @a if items entity @s player.cursor *[custom_data~{noita:{is_gui:true}}] run item modify entity @s player.cursor noita:unmark_gui

# Auto-modifiers
execute as @a if items entity @s hotbar.* *[!custom_data~{noita:{spell:{}}}] run function noita:auto_modifiers/hotbar
execute as @a if items entity @s inventory.* *[!custom_data~{noita:{spell:{}}}] run function noita:auto_modifiers/inventory
execute as @a if items entity @s weapon.offhand *[!custom_data~{noita:{spell:{}}}] run function noita:auto_modifiers/modify {slot: "weapon.offhand"}
execute as @a if items entity @s player.cursor *[!custom_data~{noita:{spell:{}}}] run function noita:auto_modifiers/modify {slot: "player.cursor"}
execute as @e[type=item] if items entity @s contents *[!custom_data~{noita:{spell:{}}}] run function noita:auto_modifiers/modify {slot: "contents"}

# Scoreboards
scoreboard players reset * noita.use_stick
scoreboard players remove @e[scores={noita.lifetime=1..}] noita.lifetime 1
kill @e[scores={noita.lifetime=0}]
tag @e[tag=noita.uuid] remove noita.uuid
execute as @a unless score @s noita.cooldown matches 0.. run scoreboard players set @s noita.cooldown 0

# Triggers
execute as @a[scores={noita.trigger.get_pid=1..}] run tellraw @s ["You are currently on team ", {"text": "#", "color": "aqua"}, {"score": {"objective": "noita.pid", "name": "@s"}, "color": "aqua"}]
execute as @a[scores={noita.trigger.set_pid=1..}] run function noita:ally/set_pid

scoreboard players reset * noita.trigger.get_pid
scoreboard players reset * noita.trigger.set_pid
scoreboard players enable @a noita.trigger.get_pid
scoreboard players enable @a noita.trigger.set_pid
