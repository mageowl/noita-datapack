tag @s remove noita.new

execute store result score is_modifier noita.vars run data get entity @s data.spells[0].modifier
execute unless score is_modifier noita.vars matches 1 run function noita:stack/cast/action
execute if score is_modifier noita.vars matches 1 run function noita:stack/cast/modifier