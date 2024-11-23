execute unless block ~ ~ ~ barrel run function noita:inscribing_table/kill

execute store result score filled_slots noita.vars run data get block ~ ~ ~ Items
execute if items block ~ ~ ~ container.* *[!custom_data~{noita: {is_gui: true}}] run function noita:inscribing_table/update
execute unless items block ~ ~ ~ container.* *[!custom_data~{noita: {is_gui: true}}] unless score filled_slots noita.vars matches 27 run function noita:inscribing_table/update
execute unless score filled_slots noita.vars matches 27 run function noita:inscribing_table/refill