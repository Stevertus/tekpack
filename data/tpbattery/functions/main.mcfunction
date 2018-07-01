#######
# Compiled from /tpbattery/functions/main.mcscript
# to .//tpbattery/functions/main.mcfunction
#
# Generated by Minecraft Script for 1.13
######
execute as @e[tag=tpBattery] at @s positioned ~ ~-1 ~ run execute if entity @p[distance=..4] run execute if block ~ ~ ~ air run tag @s remove tpCableConnector
execute as @e[tag=tpBattery] at @s positioned ~ ~-1 ~ run execute if entity @p[distance=..4] run execute if block ~ ~ ~ air run execute positioned ^ ^ ^1 as @e[tag=tpCable,distance=..0.8] at @s run function tpcables:update
execute as @e[tag=tpBattery] at @s positioned ~ ~-1 ~ run execute if entity @p[distance=..4] run execute if block ~ ~ ~ air run execute positioned ^ ^ ^-1 as @e[tag=tpCable,distance=..0.8] at @s run function tpcables:update
execute as @e[tag=tpBattery] at @s positioned ~ ~-1 ~ run execute if entity @p[distance=..4] run execute if block ~ ~ ~ air run kill @e[type=item,distance=..0.8,nbt={Item:{id:"minecraft:stone_hoe",tag:{Unbreakable:1b}}}]
execute as @e[tag=tpBattery] at @s positioned ~ ~-1 ~ run execute if entity @p[distance=..4] run execute if block ~ ~ ~ air run summon minecraft:item ~ ~0.5 ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1,tag:{Unbreakable:1b,Damage:3,HideFlags:6,display:{Name:"{\"text\":\"§5Battery\"}"}}}}
execute as @e[tag=tpBattery] at @s positioned ~ ~-1 ~ run execute if entity @p[distance=..4] run execute if block ~ ~ ~ air run kill @s
execute as @e[tag=tpBattery] at @s positioned ~ ~-1 ~ run function tpbattery:powered
execute as @e[tag=tpBattery] at @s positioned ~ ~-1 ~ run function tpbattery:batmain
execute as @a[scores={tpClick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,HideFlags:6,Damage:3}}}] at @s run tag @s add tpRayFail
execute as @a[scores={tpClick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,HideFlags:6,Damage:3}}}] at @s run function tpbattery:place
execute as @a[scores={tpClick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,HideFlags:6,Damage:3}}}] at @s run execute if entity @s[tag=!tpRayFail] run tag @s add tpRaySuccess
execute as @a[scores={tpClick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,HideFlags:6,Damage:3}}}] at @s run execute if entity @s[tag=tpRayFail] run tag @s remove tpRayFail
execute as @a[scores={tpClick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,HideFlags:6,Damage:3}}}] at @s run scoreboard players reset @s tpClick
execute as @a[tag=tpRaySuccess] run replaceitem entity @s weapon.mainhand air
execute as @a[tag=tpRaySuccess] run tag @s remove tpRaySuccess
execute as @e[type=item,nbt={Item:{id:"minecraft:stone_hoe",tag:{Unbreakable:1b}}}] at @s if entity @e[tag=tpBattery,distance=..1.4] run kill @s