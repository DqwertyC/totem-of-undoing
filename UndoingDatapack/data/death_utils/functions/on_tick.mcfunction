execute as @e[type=item,nbt={Item:{id:"minecraft:totem_of_undying"}}] at @s run function death_utils:check_totem

execute as @a[scores={used_carrot=1..},nbt={SelectedItem:{tag:{IsUndoing:1b}}}] at @s run function death_utils:undoing

scoreboard players reset @a used_carrot