$execute unless block ~ ~ ~ minecraft:air run function $(fn)
$particle $(p)
execute unless block ~ ~ ~ minecraft:air run return 1
scoreboard players remove raycast.steps noita.vars 1
$execute if score raycast.steps noita.vars matches 1.. positioned ^ ^ ^0.1 run function noita:util/raycast/step {fn: "$(fn)", p: "$(p)"}