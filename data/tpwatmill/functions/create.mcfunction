#######
# Compiled from /tpwatmill/functions/create.mcscript
# to .//tpwatmill/functions/create.mcfunction
#
# Generated by Minecraft Script for 1.13
######
execute align xyz run setblock ~ ~ ~ light_blue_stained_glass
execute align xyz run summon armor_stand ~0.5 ~0.47 ~0.5 {Tags: [tpWatMill,tpMill,tpNew,tpCableConnector],Invisible:1,Marker:1,NoGravity:1}
execute align xyz run summon armor_stand ~0.5 ~-0.13 ~0.5 {Fire:32767,Small:1,Tags: [tpMill,tpMillBlade,tpNew,tpCableConnector],Invisible:1,Marker:1,NoGravity:1,ShowArms:1b,HandItems:[{id:"iron_ingot",tag:{CustomModelData:3390001},Count:1b},{}],Pose:{RightArm:[23f,0f,0f]}}
execute if entity @s[y_rotation=-45..44.99] as @e[tag=tpMill,tag=tpNew,distance=..5,limit=1] at @s run tag @s add tpCableNoConnectN

execute if entity @s[y_rotation=45..134.99] as @e[tag=tpMill,tag=tpNew,distance=..5,limit=1] at @s run tp @s ~ ~ ~ 90 0
execute if entity @s[y_rotation=45..134.99] as @e[tag=tpMill,tag=tpNew,distance=..5,limit=1] at @s run tag @s add tpCableNoConnectO

execute if entity @s[y_rotation=135..-135.01] as @e[tag=tpMill,tag=tpNew,distance=..5,limit=1] at @s run tp @s ~ ~ ~ 180 0
execute if entity @s[y_rotation=135..-135.01] as @e[tag=tpMill,tag=tpNew,distance=..5,limit=1] at @s run tag @s add tpCableNoConnectS

execute if entity @s[y_rotation=-135..-45] as @e[tag=tpMill,tag=tpNew,distance=..5,limit=1] at @s run tp @s ~ ~ ~ -90 0
execute if entity @s[y_rotation=-135..-45] as @e[tag=tpMill,tag=tpNew,distance=..5,limit=1] at @s run tag @s add tpCableNoConnectW

execute as @e[tag=tpWatMill,tag=tpNew] at @s run scoreboard players set @s tpE 0
execute as @e[tag=tpWatMill,tag=tpNew] at @s run tp @s ~ ~0.03 ~
execute as @e[tag=tpWatMill,tag=tpNew] at @s run tp @e[tag=tpMillBlade,distance=..1] ^ ^-0.67 ^0.5 ~ ~
execute as @e[tag=tpWatMill,tag=tpNew] at @s as @e[tag=tpCable,distance=..1.1] at @s run function tpcables:update
execute as @e[tag=tpWatMill,tag=tpNew] at @s run replaceitem entity @s armor.head minecraft:firework_rocket{CustomModelData:3390007}
execute as @e[tag=tpWatMill,tag=tpNew] at @s run scoreboard players set #t2 tpTimer 294
execute as @e[tag=tpWatMill,tag=tpNew] at @s run tag @s remove tpNew