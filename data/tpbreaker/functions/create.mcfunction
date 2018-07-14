#######
# Compiled from /tpbreaker/functions/create.mcscript
# to .//tpbreaker/functions/create.mcfunction
#
# Generated by Minecraft Script for 1.13
######
execute align xyz run setblock ~ ~ ~ quartz_stairs[half=top,shape=inner_left]
execute align xyz run summon armor_stand ~0.5 ~0.4 ~0.5 {Tags: [tpBreaker,tpNew,tpCableConnector],Invisible:1,Marker:1,NoGravity:1}
execute if entity @s[y_rotation=-45..44.99] as @e[tag=tpBreaker,tag=tpNew,distance=..5,limit=1] at @s run tag @s add tpCableNoConnectN

execute if entity @s[y_rotation=45..134.99] as @e[tag=tpBreaker,tag=tpNew,distance=..5,limit=1] at @s run tp @s ~ ~ ~ 90 0
execute if entity @s[y_rotation=45..134.99] as @e[tag=tpBreaker,tag=tpNew,distance=..5,limit=1] at @s run tag @s add tpCableNoConnectO

execute if entity @s[y_rotation=135..-135.01] as @e[tag=tpBreaker,tag=tpNew,distance=..5,limit=1] at @s run tp @s ~ ~ ~ 180 0
execute if entity @s[y_rotation=135..-135.01] as @e[tag=tpBreaker,tag=tpNew,distance=..5,limit=1] at @s run tag @s add tpCableNoConnectS

execute if entity @s[y_rotation=-135..-90] as @e[tag=tpBreaker,tag=tpNew,distance=..5,limit=1] at @s run tp @s ~ ~ ~ -90 0
execute if entity @s[y_rotation=-135..-90] as @e[tag=tpBreaker,tag=tpNew,distance=..5,limit=1] at @s run tag @s add tpCableNoConnectW

execute as @e[tag=tpBreaker,tag=tpNew] at @s run scoreboard players set @s tpE 0
execute as @e[tag=tpBreaker,tag=tpNew] at @s run tp @s ~ ~0.1 ~
execute as @e[tag=tpBreaker,tag=tpNew] at @s as @e[tag=tpCable,distance=..1.1] at @s run function tpcables:update
execute as @e[tag=tpBreaker,tag=tpNew] at @s run replaceitem entity @s armor.head minecraft:carrot_on_a_stick{Unbreakable:1b,Damage:5}
execute as @e[tag=tpBreaker,tag=tpNew] at @s run tag @s remove tpNew