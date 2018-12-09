setblock ~ ~ ~ glass

execute if entity @s[y_rotation=-45..44.99] run summon armor_stand ~0.5 ~0.5 ~0.5 {Tags: [isCustomBlock,block6,newBlock],Invisible:1,Marker:1,NoGravity:1}
execute if entity @s[y_rotation=45..134.99] run summon armor_stand ~0.5 ~0.5 ~0.5 {Tags: [isCustomBlock,block6,newBlock],Invisible:1,Marker:1,NoGravity:1,Rotation:[90f,0f]}
execute if entity @s[y_rotation=135..-135.01] run summon armor_stand ~0.5 ~0.5 ~0.5 {Tags: [isCustomBlock,block6,newBlock],Invisible:1,Marker:1,NoGravity:1}
execute if entity @s[y_rotation=-135..-45] run summon armor_stand ~0.5 ~0.5 ~0.5 {Tags: [isCustomBlock,block6,newBlock],Invisible:1,Marker:1,NoGravity:1,Rotation:[90f,0f]}

execute as @e[tag=block6,tag=newBlock] run replaceitem entity @s armor.head minecraft:firework_rocket{CustomModelData:3390017}
# here could happen more actions, setting up the block
execute as @e[tag=block6,tag=newBlock] run tag @s remove newBlock
