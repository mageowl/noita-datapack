execute store result score @s noita.pid run scoreboard players add pid_count noita.vars 1
execute store result storage noita:temp pid int 1 run scoreboard players get @s noita.pid
function noita:ally/create_team with storage noita:temp