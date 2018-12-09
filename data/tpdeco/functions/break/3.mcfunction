
kill @e[type=item,distance=..0.8,nbt={Item:{id:"minecraft:iron_block"}}]
# here you can add additional data:
summon minecraft:item ~ ~0.5 ~ {Item:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{},tpdecoBlock:1,CustomModelData:3390014,display:{Name:"{\"text\":\"Hardened Metal\",\"italic\":false}"}}}}
kill @s
