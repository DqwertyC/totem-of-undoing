summon minecraft:armor_stand ~ ~ ~ {Tags:["death_finder"]}
tag @s add current_player

execute as @e[type=armor_stand,tag=death_finder,limit=1] at @s run function death_utils:tp_internal