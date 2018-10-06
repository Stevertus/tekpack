#######
# Compiled from .//functions/main.mcscript
# to .//functions/main.mcfunction
#
# Generated by Minecraft Script for 1.13
######
execute as @e[tag=tpWatMill] at @s if block ~ ~ ~ air run tag @s remove tpCableConnector
execute as @e[tag=tpWatMill] at @s if block ~ ~ ~ air as @e[tag=tpCable,distance=..1.1] at @s run function tpcables:update
execute as @e[tag=tpWatMill] at @s if block ~ ~ ~ air run summon minecraft:item ~ ~0.5 ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1,tag:{Unbreakable:1b,Damage:11,HideFlags:6,display:{Name:"{\"text\":\"§aWater Turbine\"}"}}}}
execute as @e[tag=tpWatMill] at @s if block ~ ~ ~ air run kill @e[type=item,distance=..0.8,nbt={Item:{id:"minecraft:light_blue_stained_glass"}}]
execute as @e[tag=tpWatMill] at @s if block ~ ~ ~ air run kill @e[tag=tpMillBlade,distance=..1]
execute as @e[tag=tpWatMill] at @s if block ~ ~ ~ air run kill @s
execute as @e[tag=tpWatMill] at @s run scoreboard players add @s tpTimer 1
execute as @e[tag=tpWatMill] at @s run function tpwatmill:powered
execute as @e[tag=tpWatMill] at @s run function tpwatmill:millmain
execute as @e[tag=tpWatMill] at @s if score #t2 tpTimer matches 295.. store result score @s tpDrillTempX run data get entity @s Pos[1]
execute as @e[tag=tpWatMill] at @s if score #t2 tpTimer matches 295.. run scoreboard players set @s tpMillY -1
execute as @e[tag=tpWatMill] at @s if score #t2 tpTimer matches 295.. positioned ^ ^ ^1 run function tpwatmill:rayl
execute as @e[tag=tpWatMill] at @s if score #t2 tpTimer matches 295.. positioned ^ ^ ^0.5 run scoreboard players operation @e[tag=tpMillBlade,distance=..1] tpMillY = @s tpMillY
execute as @a[scores={tpClick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,HideFlags:6,Damage:11}}}] at @s run tag @s add tpRayFail
execute as @a[scores={tpClick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,HideFlags:6,Damage:11}}}] at @s run function tpwatmill:place
execute as @a[scores={tpClick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,HideFlags:6,Damage:11}}}] at @s if entity @s[tag=!tpRayFail] run tag @s add tpRaySuccess
execute as @a[scores={tpClick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,HideFlags:6,Damage:11}}}] at @s if entity @s[tag=tpRayFail] run tag @s remove tpRayFail
execute as @a[scores={tpClick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,HideFlags:6,Damage:11}}}] at @s run scoreboard players reset @s tpClick
execute as @a[tag=tpRaySuccess] run replaceitem entity @s weapon.mainhand air
execute as @a[tag=tpRaySuccess] run tag @s remove tpRaySuccess