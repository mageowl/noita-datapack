function noita:util/projectile_block_display {on_hit: "noita:spell/rock_hit", particle: "cloud", speed: 0.5, lifetime: 50, damage: 7, damage_type: "falling_anvil", features: '"noita.proj.gravity", "noita.proj.piercing"', block_state: "minecraft:cobblestone", block_data: "", tick_rate: 1}

playsound entity.shulker.shoot player @a ~ ~ ~