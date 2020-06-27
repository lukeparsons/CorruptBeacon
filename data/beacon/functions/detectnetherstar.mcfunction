execute if score @p droppedStar matches 1.. run execute at @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:nether_star"}}] if block ~ ~ ~ minecraft:cauldron run execute at @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:nether_star"}}] run summon minecraft:armor_stand ~ ~ ~
execute at @e[type=armor_stand,sort=nearest,limit=1] run kill @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:nether_star"}}]
execute at @e[type=armor_stand,sort=nearest,limit=1] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:nether_star",Count:1b,tag:{display:{Name:'{"text":"[TEMP]"}'},InCauldron:1b}}}

scoreboard players reset @p droppedStar