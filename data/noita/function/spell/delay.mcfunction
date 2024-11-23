function noita:util/static_projectile {on_tick: "_", on_timeout: "noita:spell/delay_timeout", lifetime: 80, features: ""}

particle enchanted_hit ^ ^ ^0.1
playsound ui.button.click player @a ~ ~ ~ 2 0.8