
execute store result entity @s Pos[0] double 1 run data get entity @p[tag=current_player] LastDeathLocation.pos[0]
execute store result entity @s Pos[1] double 1 run data get entity @p[tag=current_player] LastDeathLocation.pos[1]
execute store result entity @s Pos[2] double 1 run data get entity @p[tag=current_player] LastDeathLocation.pos[2]

execute at @s store success entity @s already_loaded byte 1 run forceload query ~ ~
execute at @s[nbt={already_loaded:0b}] run forceload add ~ ~

execute if entity @p[tag=current_player,nbt={LastDeathLocation:{dimension:"minecraft:overworld"}}] in minecraft:overworld positioned as @s run tp @p[tag=current_player] ~ ~ ~
execute if entity @p[tag=current_player,nbt={LastDeathLocation:{dimension:"minecraft:the_end"}}] in minecraft:the_end positioned as @s run tp @p[tag=current_player] ~ ~ ~
execute if entity @p[tag=current_player,nbt={LastDeathLocation:{dimension:"minecraft:the_nether"}}] in minecraft:the_nether positioned as @s run tp @p[tag=current_player] ~ ~ ~

tag @p[tag=current_player] remove current_player

execute at @s[nbt={already_loaded:0b}] run forceload remove ~ ~

kill @s