
kill @e[type=item,distance=..0.8,nbt={Item:{id:"minecraft:light_gray_stained_glass"}}]
execute positioned ~ ~-0.63 ~ run kill @e[tag=isCustomBlock,tag=block4Blade,distance=..0.5]
# here you can add additional data:
summon minecraft:item ~ ~0.5 ~ {Item:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{},tpdecoBlock:1,CustomModelData:3390015,display:{Name:"{\"text\":\"Metal Ventilator\",\"italic\":false}"}}}}
kill @s
