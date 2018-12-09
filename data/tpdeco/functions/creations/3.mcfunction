setblock ~ ~ ~ iron_block
summon armor_stand ~0.5 ~0.5 ~0.5 {Tags: [isCustomBlock,block3,newBlock],Invisible:1,Marker:1,NoGravity:1,Fire:0s}

execute as @e[tag=block3,tag=newBlock] run replaceitem entity @s armor.head minecraft:firework_rocket{CustomModelData:3390014}
# here could happen more actions, setting up the block
execute as @e[tag=block3,tag=newBlock] run tag @s remove newBlock
