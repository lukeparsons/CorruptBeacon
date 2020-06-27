execute at @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:dragon_breath"}}] if block ~ ~ ~ minecraft:cauldron run execute at @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:dragon_breath"}}] run summon minecraft:armor_stand ~ ~ ~
execute at @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:dragon_breath"}}] if block ~ ~-1 ~ minecraft:cauldron run execute at @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:dragon_breath"}}] run summon minecraft:armor_stand ~ ~-1 ~
execute as @p if entity @e[type=armor_stand,sort=nearest,limit=1] run scoreboard players add @p breathInCauldron 1
execute at @e[type=armor_stand,sort=nearest,limit=1] run kill @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:dragon_breath"}}]
execute at @e[type=armor_stand,sort=nearest,limit=1] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:dragon_breath",Count:1b,tag:{display:{Name:'{"text":"[TEMP]"}'},InCauldron:1b}}}

scoreboard players reset @p droppedBreath