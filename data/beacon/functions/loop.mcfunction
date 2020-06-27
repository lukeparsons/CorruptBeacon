execute if score @p droppedBreath matches 1.. run execute if entity @e[nbt={OnGround:1b},type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:dragon_breath"}}] run function beacon:detectdragonbreath
execute if score @p droppedStar matches 1.. run function beacon:detectnetherstar
