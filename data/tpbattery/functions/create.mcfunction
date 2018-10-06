#######
# Compiled from .//functions/create.mcscript
# to .//functions/create.mcfunction
#
# Generated by Minecraft Script for 1.13
######
execute align xyz run setblock ~ ~ ~ dropper[facing=up,triggered=true]
execute align xyz run data merge block ~ ~ ~ {CustomName:"{\"text\":\"Battery\"}"}
execute align xyz run summon armor_stand ~0.5 ~1.4 ~0.5 {Tags: [tpBattery,tpNew,tpCableConnector,tpCableNoConnectU,tpCableNoConnectD,tpHigher],Invisible:1,Marker:1,NoGravity:1}
execute if entity @s[y_rotation=-45..44.99] as @e[tag=tpBattery,tag=tpNew,distance=..5,limit=1] at @s run tag @s add tpCableNoConnectW
execute if entity @s[y_rotation=-45..44.99] as @e[tag=tpBattery,tag=tpNew,distance=..5,limit=1] at @s run tag @s add tpCableNoConnectE

execute if entity @s[y_rotation=45..134.99] as @e[tag=tpBattery,tag=tpNew,distance=..5,limit=1] at @s run tp @s ~ ~ ~ 90 0
execute if entity @s[y_rotation=45..134.99] as @e[tag=tpBattery,tag=tpNew,distance=..5,limit=1] at @s run tag @s add tpCableNoConnectN
execute if entity @s[y_rotation=45..134.99] as @e[tag=tpBattery,tag=tpNew,distance=..5,limit=1] at @s run tag @s add tpCableNoConnectS

execute if entity @s[y_rotation=135..-135.01] as @e[tag=tpBattery,tag=tpNew,distance=..5,limit=1] at @s run tp @s ~ ~ ~ 180 0
execute if entity @s[y_rotation=135..-135.01] as @e[tag=tpBattery,tag=tpNew,distance=..5,limit=1] at @s run tag @s add tpCableNoConnectW
execute if entity @s[y_rotation=135..-135.01] as @e[tag=tpBattery,tag=tpNew,distance=..5,limit=1] at @s run tag @s add tpCableNoConnectE

execute if entity @s[y_rotation=-135..-45] as @e[tag=tpBattery,tag=tpNew,distance=..5,limit=1] at @s run tp @s ~ ~ ~ -90 0
execute if entity @s[y_rotation=-135..-45] as @e[tag=tpBattery,tag=tpNew,distance=..5,limit=1] at @s run tag @s add tpCableNoConnectN
execute if entity @s[y_rotation=-135..-45] as @e[tag=tpBattery,tag=tpNew,distance=..5,limit=1] at @s run tag @s add tpCableNoConnectS

execute as @e[tag=tpBattery,tag=tpNew] at @s run scoreboard players set @s tpBattMulti 1
execute as @e[tag=tpBattery,tag=tpNew] at @s run scoreboard players set @s tpBattMax 15
execute as @e[tag=tpBattery,tag=tpNew] at @s run tp @s ~ ~0.1 ~
execute as @e[tag=tpBattery,tag=tpNew] at @s positioned ~ ~-1 ~ positioned ^ ^ ^1 as @e[tag=tpCable,distance=..0.8] at @s run function tpcables:update
execute as @e[tag=tpBattery,tag=tpNew] at @s positioned ~ ~-1 ~ positioned ^ ^ ^-1 as @e[tag=tpCable,distance=..0.8] at @s run function tpcables:update
execute as @e[tag=tpBattery,tag=tpNew] at @s run replaceitem entity @s armor.head minecraft:carrot_on_a_stick{Unbreakable:1b,Damage:3}
execute as @e[tag=tpBattery,tag=tpNew] at @s run tag @s remove tpNew