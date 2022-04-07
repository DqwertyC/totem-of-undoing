kill @e[type=item,distance=..5,nbt={Item:{id:"minecraft:ender_pearl",Count:2b}}]
kill @e[type=item,distance=..5,nbt={Item:{id:"minecraft:echo_shard",Count:2b}}]

setblock ~ ~ ~ minecraft:cauldron
playsound minecraft:entity.lightning_bolt.impact block @a ~ ~ ~ 10 1 1
playsound minecraft:entity.enderman.teleport block @p ~ ~ ~ 10 1 1
particle minecraft:sculk_soul ~ ~ ~ 0 0 0 1 10 force

summon item ~ ~1 ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{IsUndoing:1b,CustomModelData:2072001,display:{Name:'[{"text":"Totem of Undoing","italic":false}]'},Enchantments:[{}]}}}
kill @s
