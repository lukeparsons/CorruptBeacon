
execute if score @p droppedBreath matches 1.. run execute at @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:dragon_breath"}}] if block ~ ~ ~ minecraft:cauldron run execute at @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:dragon_breath"}}] run summon minecraft:armor_stand ~ ~ ~
execute at @e[type=armor_stand,sort=nearest,limit=1] run kill @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:dragon_breath"}}]
execute at @e[type=armor_stand,sort=nearest,limit=1] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:dragon_breath",Count:1b,tag:{display:{Name:'{"text":"[TEMP]"}'},InCauldron:1b}}}

scoreboard players reset @p droppedBreath

# TODO: Put score check in loop to prevent un needed function calls (will break datapack if not done)
