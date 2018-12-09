
execute as @e[type=firework_rocket,nbt={FireworksItem:{tag:{tpdecoBlock:1}}}] at @s unless block ~ ~ ~ air if block ~0.4 ~ ~ air run tp @s ~0.5 ~ ~
execute as @e[type=firework_rocket,nbt={FireworksItem:{tag:{tpdecoBlock:1}}}] at @s unless block ~ ~ ~ air if block ~-0.4 ~ ~ air run tp @s ~-0.5 ~ ~
execute as @e[type=firework_rocket,nbt={FireworksItem:{tag:{tpdecoBlock:1}}}] at @s unless block ~ ~ ~ air if block ~ ~ ~-0.4 air run tp @s ~ ~ ~-0.5
execute as @e[type=firework_rocket,nbt={FireworksItem:{tag:{tpdecoBlock:1}}}] at @s unless block ~ ~ ~ air if block ~ ~ ~0.4 air run tp @s ~ ~ ~0.5
execute as @e[type=firework_rocket,nbt={FireworksItem:{tag:{tpdecoBlock:1}}}] at @s unless block ~ ~ ~ air if block ~ ~-0.4 ~ air run tp @s ~ ~-0.5 ~
execute as @e[type=firework_rocket,nbt={FireworksItem:{tag:{tpdecoBlock:1}}}] at @s unless block ~ ~ ~ air if block ~ ~0.4 ~ air run tp @s ~ ~0.5 ~
execute as @e[type=firework_rocket,nbt={FireworksItem:{tag:{tpdecoBlock:1}}}] at @s align xyz if block ~ ~ ~ air run function tpdeco:create

execute as @e[tag=isCustomBlock,tag=block1] at @s if block ~ ~ ~ air run function tpdeco:break/1
execute as @e[tag=isCustomBlock,tag=block1] at @s if block ~ ~-1 ~ air run function tpdeco:break/1
execute as @e[tag=isCustomBlock,tag=block2] at @s if block ~ ~ ~ air run function tpdeco:break/2
execute as @e[tag=isCustomBlock,tag=block3] at @s if block ~ ~ ~ air run function tpdeco:break/3
execute as @e[tag=isCustomBlock,tag=block4] at @s if block ~ ~ ~ air run function tpdeco:break/4
execute as @e[tag=isCustomBlock,tag=block5] at @s if block ~ ~ ~ air run function tpdeco:break/5
execute as @e[tag=isCustomBlock,tag=block6] at @s if block ~ ~ ~ air run function tpdeco:break/6
execute as @e[tag=isCustomBlock,tag=block7] at @s if block ~ ~ ~ air run function tpdeco:break/7

execute as @e[tag=block3,nbt={Fire:0s}] run data merge entity @s {Fire:23000s}
scoreboard players add @e[tag=block4Blade] tpE 1
scoreboard players set @e[tag=block4Blade,scores={tpE=720..}] tpE 0
execute as @a at @s as @e[tag=block4Blade,distance=..40] store result entity @s Pose.RightArm[0] float 5 run scoreboard players get @s tpE
execute as @e[tag=block4Blade,nbt={Fire:0s}] run data merge entity @s {Fire:23000s}
execute as @e[tag=block5,nbt={Fire:0s}] run data merge entity @s {Fire:23000s}
execute as @e[tag=block7,nbt={Fire:0s}] run data merge entity @s {Fire:23000s}
