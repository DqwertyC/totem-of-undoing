function death_utils:tp_deathpoint
execute at @s run playsound minecraft:entity.enderman.teleport player @p ~ ~ ~ 10 1 1
item replace entity @s weapon.mainhand with minecraft:air

effect give @s minecraft:fire_resistance 40 0

effect give @s minecraft:blindness 2 0 true
