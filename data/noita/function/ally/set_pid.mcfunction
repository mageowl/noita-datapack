execute if score @s noita.trigger.set_pid > pid_count noita.vars run tellraw @s [{"text": "Failed to set team. Make sure that team #", "color": "red"}, {"score": {"objective": "noita.trigger.set_pid", "name": "@s"}}, " exists"]
execute if score @s noita.trigger.set_pid > pid_count noita.vars run return fail

scoreboard players operation @s noita.pid = @s noita.trigger.set_pid
execute store result storage noita:temp pid int 1 run scoreboard players get @s noita.trigger.set_pid
function noita:ally/join_team with storage noita:temp

tellraw @s [{"text": "You are now a part of team "}, {"text": "#", "color": "aqua"}, {"score": {"objective": "noita.trigger.set_pid", "name": "@s"}, "color": "aqua"}]