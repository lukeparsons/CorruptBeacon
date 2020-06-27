
execute if score @p droppedBreath matches 1.. run execute at @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:dragon_breath"}}] if block ~ ~ ~ minecraft:cauldron run execute at @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:dragon_breath"}}] run summon minecraft:armor_stand ~ ~ ~
execute at @e[type=armor_stand,sort=nearest,limit=1] run kill @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:dragon_breath"}}]
execute at @e[type=armor_stand,sort=nearest,limit=1] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:dragon_breath",Count:1b,tag:{display:{Name:'{"text":"[TEMP]"}'},InCauldron:1b}}}


scoreboard players reset @p droppedBreath

#scoreboard objectives add droppedStar minecraft.dropped:minecraft.nether_star
#execute if score @p droppedStar matches 1.. run execute at @e[type=item,distance=..7,nbt={Item:{id:"minecraft:nether_star",Count:1b}}] if block ~ ~ ~ minecraft:cauldron run execute as @p run say StarInCauldron
#scoreboard players reset @p droppedStar

# At this point we've checked if dragon breath and nether star is in cauldron so can begin creation of corrupted star
# TODO: Put score check in loop to prevent un needed function calls (will break datapack if not done)
