setblock ~ ~ ~ player_head{Owner:{Id:"4d1291e7-64ae-4fad-b858-c07caa6f9fbd",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmNiNGU0M2MyZjg1Nzc3MDVmM2VlMWM1NzBmYmJmNGUyN2ZkZTljM2RjMGU0NzI3MjFhYWE4YjA1Mzc3NWJlYiJ9fX0="}]}}}
setblock ~ ~-1 ~ iron_trapdoor[half=top,facing=west] destroy
execute if entity @s[y_rotation=-45..44.99] run summon armor_stand ~0.5 ~0.5 ~0.5 {Tags: [isCustomBlock,block1,newBlock],Invisible:1,Marker:1,NoGravity:1}
execute if entity @s[y_rotation=45..134.99] run summon armor_stand ~0.5 ~0.5 ~0.5 {Tags: [isCustomBlock,block1,newBlock],Invisible:1,Marker:1,NoGravity:1,Rotation:[90f,0f]}
execute if entity @s[y_rotation=135..-135.01] run summon armor_stand ~0.5 ~0.5 ~0.5 {Tags: [isCustomBlock,block1,newBlock],Invisible:1,Marker:1,NoGravity:1,Rotation:[180f,0f]}
execute if entity @s[y_rotation=-135..-45] run summon armor_stand ~0.5 ~0.5 ~0.5 {Tags: [isCustomBlock,block1,newBlock],Invisible:1,Marker:1,NoGravity:1,Rotation:[-90f,0f]}

execute as @e[tag=block1,tag=newBlock] run replaceitem entity @s armor.head minecraft:firework_rocket{CustomModelData:3390012}
# here could happen more actions, setting up the block
execute as @e[tag=block1,tag=newBlock] run tag @s remove newBlock
