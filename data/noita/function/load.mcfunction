scoreboard objectives add noita.vars dummy
scoreboard objectives add noita.consts dummy
scoreboard players set 2 noita.consts 2
scoreboard players set 5 noita.consts 5
scoreboard players set 6 noita.consts 6
scoreboard players set 9 noita.consts 9

scoreboard objectives add noita.use_stick used:warped_fungus_on_a_stick
scoreboard objectives add noita.cooldown dummy
scoreboard objectives add noita.max_cooldown dummy

scoreboard objectives add noita.lifetime dummy
scoreboard objectives add noita.projectile.damage dummy
scoreboard objectives add noita.projectile.ticks dummy

scoreboard objectives add noita.inscribing_table.spell_slots dummy
scoreboard objectives add noita.inscribing_table.has_output dummy

scoreboard objectives add noita.pid dummy
scoreboard players set pid_count noita.vars 0
execute as @a run function noita:ally/assign_pid

scoreboard objectives add noita.trigger.get_pid trigger
scoreboard objectives add noita.trigger.set_pid trigger

team add noita.no_collision
team modify noita.no_collision collisionRule never

forceload add 0 0
execute in noita:void run forceload add 0 0
# Turn off default trigger message
gamerule sendCommandFeedback false

schedule function #noita:spell_registry 1t