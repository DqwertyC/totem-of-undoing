execute if block ~ ~ ~ minecraft:water_cauldron[level=3] if entity @e[type=item,distance=..5,nbt={Item:{id:"minecraft:ender_pearl",Count:2b}}] if entity @e[type=item,distance=..5,nbt={Item:{id:"minecraft:echo_shard",Count:2b}}] run function death_utils:create_totem