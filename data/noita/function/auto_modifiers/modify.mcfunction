data modify storage noita:temp spell set value {}

summon armor_stand 0 0 0 {Tags:["noita.temp"],Invunerable:true}
$item replace entity @e[tag=noita.temp,limit=1] weapon.mainhand from entity @s $(slot)

data modify storage noita:temp id set from entity @e[tag=noita.temp,limit=1] HandItems[0].id
data modify storage noita:temp id set from entity @e[tag=noita.temp,limit=1] HandItems[0].components."minecraft:custom_data".custom_id
function noita:spell_registry/get with storage noita:temp
function noita:auto_modifiers/set_lore with storage noita:temp spell
data modify entity @e[tag=noita.temp,limit=1] HandItems[0].components."minecraft:custom_data".noita.spell set from storage noita:temp spell

data modify entity @e[tag=noita.temp,limit=1] HandItems[0].components."minecraft:custom_data".noita.is_gui set value false

$item replace entity @s $(slot) from entity @e[tag=noita.temp,limit=1] weapon.mainhand
kill @e[tag=noita.temp]