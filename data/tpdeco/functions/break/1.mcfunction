
kill @e[type=item,distance=..0.8,nbt={Item:{id:"minecraft:player_head"}}]
setblock ~ ~ ~ air
setblock ~ ~-1 ~ air
# here you can add additional data:
summon minecraft:item ~ ~0.5 ~ {Item:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{},tpdecoBlock:1,CustomModelData:3390012,display:{Name:"{\"text\":\"Gridwalk Stairs\",\"italic\":false}"}}}}
kill @s
