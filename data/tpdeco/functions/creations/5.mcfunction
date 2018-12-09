setblock ~ ~ ~ yellow_wool
summon armor_stand ~0.5 ~0.5 ~0.5 {Tags: [isCustomBlock,block5,newBlock],Invisible:1,Marker:1,NoGravity:1}

execute as @e[tag=block5,tag=newBlock] run replaceitem entity @s armor.head minecraft:firework_rocket{CustomModelData:3390016}
# here could happen more actions, setting up the block
execute as @e[tag=block5,tag=newBlock] run tag @s remove newBlock
