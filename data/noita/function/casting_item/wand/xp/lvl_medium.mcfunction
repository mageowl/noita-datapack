scoreboard players operation xp_total noita.vars = xp_lvl noita.vars
scoreboard players operation xp_total noita.vars *= 5 noita.consts
scoreboard players remove xp_total noita.vars 81
scoreboard players operation xp_total noita.vars *= xp_lvl noita.vars
scoreboard players operation xp_total noita.vars /= 2 noita.consts
scoreboard players add xp_total noita.vars 360
scoreboard players operation xp_total noita.vars += xp_pts noita.vars