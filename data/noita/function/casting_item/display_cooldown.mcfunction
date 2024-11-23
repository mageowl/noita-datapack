scoreboard players operation cooldown_frac noita.vars = @s noita.cooldown
scoreboard players operation cooldown_frac noita.vars *= 6 noita.consts
scoreboard players operation cooldown_rem noita.vars = cooldown_frac noita.vars
scoreboard players operation cooldown_frac noita.vars /= @s noita.max_cooldown
scoreboard players operation cooldown_rem noita.vars %= @s noita.max_cooldown
execute if score cooldown_rem noita.vars matches 1.. run scoreboard players add cooldown_frac noita.vars 1


data merge storage noita:temp {bar1: "", bar2: "", bar3: "", bar4: "", bar5: "", bar6: ""}
execute if score cooldown_frac noita.vars matches 1.. run data modify storage noita:temp bar1 set value ""
execute if score cooldown_frac noita.vars matches 2.. run data modify storage noita:temp bar2 set value ""
execute if score cooldown_frac noita.vars matches 3.. run data modify storage noita:temp bar3 set value ""
execute if score cooldown_frac noita.vars matches 4.. run data modify storage noita:temp bar4 set value ""
execute if score cooldown_frac noita.vars matches 5.. run data modify storage noita:temp bar5 set value ""
execute if score cooldown_frac noita.vars matches 6.. run data modify storage noita:temp bar6 set value ""

function noita:casting_item/display_cooldown_title with storage noita:temp