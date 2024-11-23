data remove entity @e[type=item,nbt={Item:{id:"minecraft:barrel"}},distance=..5,limit=1] Item.components."minecraft:custom_name"
data modify entity @e[type=item,nbt={Item:{id:"minecraft:barrel"}},distance=..5,limit=1] Item merge value { \
		"id": "minecraft:glow_item_frame", \
		"components": { \
			"minecraft:custom_data": { \
				"custom_id": "noita:inscribing_table", \
				"noita": { \
					"is_gui": false \
				} \
			}, \
			"minecraft:item_name": "\"Inscribing Table\"", \
			"minecraft:custom_model_data": 1, \
			"minecraft:entity_data": { \
				"id": "minecraft:glow_item_frame", \
				"Facing": 1, \
				"Item": { \
					"id": "glow_item_frame", \
					"components": { "minecraft:custom_model_data": 2 } \
				}, \
				"Invisible": true, \
				"Fixed": true, \
				"Tags": ["noita.inscribing_table"] \
			} \
		} \
	}
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{custom_id:"noita:gui"}}}}]
kill