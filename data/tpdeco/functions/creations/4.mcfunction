setblock ~ ~ ~ light_gray_stained_glass

execute if entity @s[y_rotation=-45..44.99] run summon armor_stand ~0.5 ~0.5 ~0.5 {Tags: [isCustomBlock,block4,newBlock],Invisible:1,Marker:1,NoGravity:1}
execute if entity @s[y_rotation=-45..44.99] run summon armor_stand ~0.5 ~-0.13 ~0.5 {Rotation:[90f,0f],Fire:32767,Small:1,Tags: [isCustomBlock,block4Blade],Invisible:1,Marker:1,NoGravity:1,HandItems:[{id:"iron_ingot",tag:{CustomModelData:3390002},Count:1b},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if entity @s[y_rotation=45..134.99] run summon armor_stand ~0.5 ~0.5 ~0.5 {Tags: [isCustomBlock,block4,newBlock],Invisible:1,Marker:1,NoGravity:1,Rotation:[90f,0f]}
execute if entity @s[y_rotation=45..134.99] run summon armor_stand ~0.5 ~-0.13 ~0.5 {Rotation:[180f,0f],Fire:32767,Small:1,Tags: [isCustomBlock,block4Blade],Invisible:1,Marker:1,NoGravity:1,HandItems:[{id:"iron_ingot",tag:{CustomModelData:3390002},Count:1b},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if entity @s[y_rotation=135..-135.01] run summon armor_stand ~0.5 ~0.5 ~0.5 {Rotation:[180f,0f],Tags: [isCustomBlock,block4,newBlock],Invisible:1,Marker:1,NoGravity:1}
execute if entity @s[y_rotation=135..-135.01] run summon armor_stand ~0.5 ~-0.13 ~0.5 {Rotation:[-90f,0f],Fire:32767,Small:1,Tags: [isCustomBlock,block4Blade],Invisible:1,Marker:1,NoGravity:1,HandItems:[{id:"iron_ingot",tag:{CustomModelData:3390002},Count:1b},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if entity @s[y_rotation=-135..-45] run summon armor_stand ~0.5 ~0.5 ~0.5 {Tags: [isCustomBlock,block4,newBlock],Invisible:1,Marker:1,NoGravity:1,Rotation:[-90f,0f]}
execute if entity @s[y_rotation=-135..-45] run summon armor_stand ~0.5 ~-0.13 ~0.5 {Fire:32767,Small:1,Tags: [isCustomBlock,block4Blade],Invisible:1,Marker:1,NoGravity:1,HandItems:[{id:"iron_ingot",tag:{CustomModelData:3390002},Count:1b},{}],Pose:{RightArm:[0f,0f,0f]}}

execute as @e[tag=block4,tag=newBlock] run replaceitem entity @s armor.head minecraft:firework_rocket{CustomModelData:3390015}
# here could happen more actions, setting up the block
execute as @e[tag=block4,tag=newBlock] run tag @s remove newBlock
