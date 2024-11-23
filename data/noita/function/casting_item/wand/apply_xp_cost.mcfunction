# Points at exact level = 
#   level × (level + 6)                         (at levels 0–16)
#   ( level × ((5 × level) – 81) ) / 2 + 360    (at levels 17–31) 
#   ( level × ((9 × level) – 325) ) / 2 + 2220  (at levels 32+)

execute as @s[gamemode=creative] run return 1

execute store result score xp_lvl noita.vars run xp query @s levels
execute store result score xp_pts noita.vars run xp query @s points
execute if score xp_lvl noita.vars matches 0 run scoreboard players operation xp_total noita.vars = xp_pts noita.vars
execute if score xp_lvl noita.vars matches 1..16 run function noita:casting_item/wand/xp/lvl_low
execute if score xp_lvl noita.vars matches 17..31 run function noita:casting_item/wand/xp/lvl_medium
execute if score xp_lvl noita.vars matches 32.. run function noita:casting_item/wand/xp/lvl_high

execute if score xp_total noita.vars < xp_cost noita.vars run return fail

execute store result storage noita:temp pts int 1 run scoreboard players get xp_cost noita.vars
function noita:casting_item/wand/xp/remove with storage noita:temp

return 1