summon skeleton ~ ~ ~ {Tags:["noita.new"]}
execute if predicate noita:random/20 run summon skeleton ~ ~ ~ {Tags:["noita.new"]}

tag @s add noita.self
execute as @e[tag=noita.new] run function noita:ally/join_team with entity @e[tag=noita.self, limit=1] data
tag @s remove noita.self
spreadplayers ~ ~ 5 3 false @e[tag=noita.new] 

tag @e[tag=noita.new] remove noita.new