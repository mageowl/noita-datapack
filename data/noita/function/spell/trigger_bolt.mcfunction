function noita:util/projectile {speed: 0.5, tick_rate: 2, on_hit: "noita:spell/trigger_bolt_hit", particle: "dust_color_transition{from_color: [0.6, 1.0, 1.0], to_color: [0.9, 0.8, 0.3], scale: 1.0}", lifetime: 20, features: "", damage: 5, damage_type: "indirect_magic"}
playsound entity.illusioner.cast_spell player @a ~ ~ ~
playsound block.amethyst_block.resonate player @a ~ ~ ~ 2