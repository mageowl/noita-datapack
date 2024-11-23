$scoreboard players set raycast.steps noita.vars $(max_steps)
scoreboard players set raycast.hit_blocks noita.vars 1
scoreboard players set raycast.hit_entities noita.vars 0
$function noita:util/raycast/step {fn: "$(fn)", p: "$(particle)"}