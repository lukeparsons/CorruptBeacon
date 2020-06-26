scoreboard objectives add droppedBreath minecraft.dropped:minecraft.dragon_breath
execute if score @p droppedBreath matches 1.. run execute at @e[type=item,nbt={Item:{id:"minecraft:dragon_breath",Count:1b}}] if block ~ ~ ~ minecraft:cauldron run execute as @p run say InCauldron
scoreboard players reset @p droppedBreath

# At this point we've checked if dragon breath is in cauldron
# TODO: Put score check in loop to prevent un needed function calls (will break datapack if not done)