#######
# Compiled from /tpbreaker/functions/main.mcscript
# to .//tpbreaker/functions/main.mcfunction
#
# Generated by Minecraft Script for 1.13
######
execute as @e[tag=tpBreaker] at @s if block ~ ~ ~ air run tag @s remove tpCableConnector
execute as @e[tag=tpBreaker] at @s if block ~ ~ ~ air as @e[tag=tpCable,distance=..1.1] at @s run function tpcables:update
execute as @e[tag=tpBreaker] at @s if block ~ ~ ~ air run summon minecraft:item ~ ~0.5 ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1,tag:{Unbreakable:1b,Damage:5,HideFlags:6,display:{Name:"{\"text\":\"§5Block Breaker\"}"}}}}
execute as @e[tag=tpBreaker] at @s if block ~ ~ ~ air run kill @e[type=item,distance=..0.8,nbt={Item:{id:"minecraft:quartz_stairs"}}]
execute as @e[tag=tpBreaker] at @s if block ~ ~ ~ air run kill @s
execute as @e[tag=tpBreaker] at @s run scoreboard players add @s tpTimer 1
execute as @e[tag=tpBreaker] at @s run function tpbreaker:powered
execute as @e[tag=tpBreaker] at @s run function tpbreaker:breakmain
execute as @e[tag=tpBreaker] at @s if score @s tpTimer matches 100.. run scoreboard players reset @s tpTimer
execute as @a[scores={tpClick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,HideFlags:6,Damage:5}}}] at @s run tag @s add tpRayFail
execute as @a[scores={tpClick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,HideFlags:6,Damage:5}}}] at @s run function tpbreaker:place
execute as @a[scores={tpClick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,HideFlags:6,Damage:5}}}] at @s if entity @s[tag=!tpRayFail] run tag @s add tpRaySuccess
execute as @a[scores={tpClick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,HideFlags:6,Damage:5}}}] at @s if entity @s[tag=tpRayFail] run tag @s remove tpRayFail
execute as @a[scores={tpClick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b,HideFlags:6,Damage:5}}}] at @s run scoreboard players reset @s tpClick
execute as @a[tag=tpRaySuccess] run replaceitem entity @s weapon.mainhand air
execute as @a[tag=tpRaySuccess] run tag @s remove tpRaySuccess