#######
# Compiled from /tpbattery/functions/batmain.mcscript
# to .//tpbattery/functions/batmain.mcfunction
#
# Generated by Minecraft Script for 1.13
######
execute if score #t tpTimer matches 2.. run tag @s[tag=tpFirstPower] remove tpFirstPower
execute if score #t tpTimer matches 2.. positioned ^ ^ ^1 unless score @e[tag=tpCable,distance=..0.8,limit=1] tpE matches 0.. if score @s tpE matches 1.. if entity @e[tag=tpCable,distance=..0.8] run tag @s[tag=!tpPowered] add tpBattRemove
execute if score #t tpTimer matches 2.. positioned ^ ^ ^-1 if score @e[tag=tpCable,distance=..0.8,limit=1] tpE matches 1.. if score @s tpE < @s tpBattMax run tag @s add tpBattAdd

execute positioned ^ ^ ^-1 if entity @s[tag=tpBattAdd] run scoreboard players add @s tpE 1
execute positioned ^ ^ ^-1 if entity @s[tag=tpBattAdd] run particle minecraft:dust 0.2 1 0.2 0.8 ~ ~ ~ 0 0.1 0 10 10
execute positioned ^ ^ ^-1 if entity @s[tag=tpBattAdd] positioned ^ ^ ^1 run function tpbattery:items
execute positioned ^ ^ ^-1 if entity @s[tag=tpBattAdd] run scoreboard players remove @e[tag=tpCable,distance=..0.8,limit=1] tpE 1
execute positioned ^ ^ ^-1 if entity @s[tag=tpBattAdd] run scoreboard players reset @e[tag=tpCable,distance=..0.8,scores={tpE=..0}] tpE
execute positioned ^ ^ ^-1 if entity @s[tag=tpBattAdd] run tag @s remove tpBattAdd
execute positioned ^ ^ ^1 if entity @s[tag=tpBattRemove] run scoreboard players add @e[tag=tpCable,distance=..0.8,limit=1] tpE 1
execute positioned ^ ^ ^1 if entity @s[tag=tpBattRemove] run scoreboard players remove @s tpE 1
execute positioned ^ ^ ^1 if entity @s[tag=tpBattRemove] positioned ^ ^ ^-1 run function tpbattery:items
execute positioned ^ ^ ^1 if entity @s[tag=tpBattRemove] run tag @s remove tpBattRemove
execute if entity @a[distance=..2] if score @s tpEDisplay matches 0 run title @a[distance=..2] actionbar ["",{"text":"","color":"green"},{"text":"▌▌▌▌▌▌▌▌▌▌▌▌▌▌▌  ","color":"gray"},{"text":"(","color":"gray"},{"score":{"name":"@s","objective":"tpE"},"color":"gray"},{"text":" of ","color":"gray"},{"score":{"name":"@s","objective":"tpBattMax"},"color":"gray"},{"text":")","color":"gray"}]
execute if entity @a[distance=..2] if score @s tpEDisplay matches 1 run title @a[distance=..2] actionbar ["",{"text":"▌","color":"green"},{"text":"▌▌▌▌▌▌▌▌▌▌▌▌▌▌  ","color":"gray"},{"text":"(","color":"gray"},{"score":{"name":"@s","objective":"tpE"},"color":"gray"},{"text":" of ","color":"gray"},{"score":{"name":"@s","objective":"tpBattMax"},"color":"gray"},{"text":")","color":"gray"}]
execute if entity @a[distance=..2] if score @s tpEDisplay matches 2 run title @a[distance=..2] actionbar ["",{"text":"▌▌","color":"green"},{"text":"▌▌▌▌▌▌▌▌▌▌▌▌▌  ","color":"gray"},{"text":"(","color":"gray"},{"score":{"name":"@s","objective":"tpE"},"color":"gray"},{"text":" of ","color":"gray"},{"score":{"name":"@s","objective":"tpBattMax"},"color":"gray"},{"text":")","color":"gray"}]
execute if entity @a[distance=..2] if score @s tpEDisplay matches 3 run title @a[distance=..2] actionbar ["",{"text":"▌▌▌","color":"green"},{"text":"▌▌▌▌▌▌▌▌▌▌▌▌  ","color":"gray"},{"text":"(","color":"gray"},{"score":{"name":"@s","objective":"tpE"},"color":"gray"},{"text":" of ","color":"gray"},{"score":{"name":"@s","objective":"tpBattMax"},"color":"gray"},{"text":")","color":"gray"}]
execute if entity @a[distance=..2] if score @s tpEDisplay matches 4 run title @a[distance=..2] actionbar ["",{"text":"▌▌▌▌","color":"green"},{"text":"▌▌▌▌▌▌▌▌▌▌▌  ","color":"gray"},{"text":"(","color":"gray"},{"score":{"name":"@s","objective":"tpE"},"color":"gray"},{"text":" of ","color":"gray"},{"score":{"name":"@s","objective":"tpBattMax"},"color":"gray"},{"text":")","color":"gray"}]
execute if entity @a[distance=..2] if score @s tpEDisplay matches 5 run title @a[distance=..2] actionbar ["",{"text":"▌▌▌▌▌","color":"green"},{"text":"▌▌▌▌▌▌▌▌▌▌  ","color":"gray"},{"text":"(","color":"gray"},{"score":{"name":"@s","objective":"tpE"},"color":"gray"},{"text":" of ","color":"gray"},{"score":{"name":"@s","objective":"tpBattMax"},"color":"gray"},{"text":")","color":"gray"}]
execute if entity @a[distance=..2] if score @s tpEDisplay matches 6 run title @a[distance=..2] actionbar ["",{"text":"▌▌▌▌▌▌","color":"green"},{"text":"▌▌▌▌▌▌▌▌▌  ","color":"gray"},{"text":"(","color":"gray"},{"score":{"name":"@s","objective":"tpE"},"color":"gray"},{"text":" of ","color":"gray"},{"score":{"name":"@s","objective":"tpBattMax"},"color":"gray"},{"text":")","color":"gray"}]
execute if entity @a[distance=..2] if score @s tpEDisplay matches 7 run title @a[distance=..2] actionbar ["",{"text":"▌▌▌▌▌▌▌","color":"green"},{"text":"▌▌▌▌▌▌▌▌  ","color":"gray"},{"text":"(","color":"gray"},{"score":{"name":"@s","objective":"tpE"},"color":"gray"},{"text":" of ","color":"gray"},{"score":{"name":"@s","objective":"tpBattMax"},"color":"gray"},{"text":")","color":"gray"}]
execute if entity @a[distance=..2] if score @s tpEDisplay matches 8 run title @a[distance=..2] actionbar ["",{"text":"▌▌▌▌▌▌▌▌","color":"green"},{"text":"▌▌▌▌▌▌▌  ","color":"gray"},{"text":"(","color":"gray"},{"score":{"name":"@s","objective":"tpE"},"color":"gray"},{"text":" of ","color":"gray"},{"score":{"name":"@s","objective":"tpBattMax"},"color":"gray"},{"text":")","color":"gray"}]
execute if entity @a[distance=..2] if score @s tpEDisplay matches 9 run title @a[distance=..2] actionbar ["",{"text":"▌▌▌▌▌▌▌▌▌","color":"green"},{"text":"▌▌▌▌▌▌  ","color":"gray"},{"text":"(","color":"gray"},{"score":{"name":"@s","objective":"tpE"},"color":"gray"},{"text":" of ","color":"gray"},{"score":{"name":"@s","objective":"tpBattMax"},"color":"gray"},{"text":")","color":"gray"}]
execute if entity @a[distance=..2] if score @s tpEDisplay matches 10 run title @a[distance=..2] actionbar ["",{"text":"▌▌▌▌▌▌▌▌","color":"green"},{"text":"▌▌▌▌▌  ","color":"gray"},{"text":"(","color":"gray"},{"score":{"name":"@s","objective":"tpE"},"color":"gray"},{"text":" of ","color":"gray"},{"score":{"name":"@s","objective":"tpBattMax"},"color":"gray"},{"text":")","color":"gray"}]
execute if entity @a[distance=..2] if score @s tpEDisplay matches 11 run title @a[distance=..2] actionbar ["",{"text":"▌▌▌▌▌▌▌▌▌","color":"green"},{"text":"▌▌▌▌  ","color":"gray"},{"text":"(","color":"gray"},{"score":{"name":"@s","objective":"tpE"},"color":"gray"},{"text":" of ","color":"gray"},{"score":{"name":"@s","objective":"tpBattMax"},"color":"gray"},{"text":")","color":"gray"}]
execute if entity @a[distance=..2] if score @s tpEDisplay matches 12 run title @a[distance=..2] actionbar ["",{"text":"▌▌▌▌▌▌▌▌▌▌","color":"green"},{"text":"▌▌▌  ","color":"gray"},{"text":"(","color":"gray"},{"score":{"name":"@s","objective":"tpE"},"color":"gray"},{"text":" of ","color":"gray"},{"score":{"name":"@s","objective":"tpBattMax"},"color":"gray"},{"text":")","color":"gray"}]
execute if entity @a[distance=..2] if score @s tpEDisplay matches 13 run title @a[distance=..2] actionbar ["",{"text":"▌▌▌▌▌▌▌▌▌▌▌","color":"green"},{"text":"▌▌  ","color":"gray"},{"text":"(","color":"gray"},{"score":{"name":"@s","objective":"tpE"},"color":"gray"},{"text":" of ","color":"gray"},{"score":{"name":"@s","objective":"tpBattMax"},"color":"gray"},{"text":")","color":"gray"}]
execute if entity @a[distance=..2] if score @s tpEDisplay matches 14 run title @a[distance=..2] actionbar ["",{"text":"▌▌▌▌▌▌▌▌▌▌▌▌","color":"green"},{"text":"▌  ","color":"gray"},{"text":"(","color":"gray"},{"score":{"name":"@s","objective":"tpE"},"color":"gray"},{"text":" of ","color":"gray"},{"score":{"name":"@s","objective":"tpBattMax"},"color":"gray"},{"text":")","color":"gray"}]
execute if entity @a[distance=..2] if score @s tpEDisplay matches 15 run title @a[distance=..2] actionbar ["",{"text":"▌▌▌▌▌▌▌▌▌▌▌▌▌▌▌  ","color":"green"},{"text":"(","color":"gray"},{"score":{"name":"@s","objective":"tpE"},"color":"gray"},{"text":" of ","color":"gray"},{"score":{"name":"@s","objective":"tpBattMax"},"color":"gray"},{"text":")","color":"gray"}]

execute if entity @a[distance=..4] if score @s tpEDisplay matches 1..5 run particle minecraft:dust 0 1 0 0.5 ~ ~0.5 ~ 0 0.1 0 10 1 normal @a[distance=..4]
execute if entity @a[distance=..4] if score @s tpEDisplay matches 6..10 run particle minecraft:dust 1 1 0 0.5 ~ ~0.5 ~ 0 0.1 0 10 1 normal @a[distance=..4]
execute if entity @a[distance=..4] if score @s tpEDisplay matches 11..15 run particle minecraft:dust 1 0 0 0.5 ~ ~0.5 ~ 0 0.1 0 10 1 normal @a[distance=..4]

# replaceitems if taken out
execute unless block ~ ~ ~ minecraft:dropper{Items:[{id:"minecraft:stone_hoe",Slot:0b,tag:{Unbreakable:1b,battDisplay:1b}}]} run tag @s add tpUpdateItems
execute unless block ~ ~ ~ minecraft:dropper{Items:[{id:"minecraft:stone_hoe",Slot:1b,tag:{Unbreakable:1b,battDisplay:1b}}]} run tag @s add tpUpdateItems
execute unless block ~ ~ ~ minecraft:dropper{Items:[{id:"minecraft:stone_hoe",Slot:2b,tag:{Unbreakable:1b,battDisplay:1b}}]} run tag @s add tpUpdateItems
execute unless block ~ ~ ~ minecraft:dropper{Items:[{id:"minecraft:stone_hoe",Slot:3b,tag:{Unbreakable:1b,battDisplay:1b}}]} run tag @s add tpUpdateItems
execute unless block ~ ~ ~ minecraft:dropper{Items:[{id:"minecraft:stone_hoe",Slot:4b,tag:{Unbreakable:1b,battDisplay:1b}}]} run tag @s add tpUpdateItems
execute unless block ~ ~ ~ minecraft:dropper{Items:[{id:"minecraft:stone_hoe",Slot:5b,tag:{Unbreakable:1b,battDisplay:1b}}]} run tag @s add tpUpdateItems
execute unless block ~ ~ ~ minecraft:dropper{Items:[{id:"minecraft:stone_hoe",Slot:6b,tag:{Unbreakable:1b,battDisplay:1b}}]} run tag @s add tpUpdateItems
execute unless block ~ ~ ~ minecraft:dropper{Items:[{id:"minecraft:stone_hoe",Slot:7b,tag:{Unbreakable:1b,battDisplay:1b}}]} run tag @s add tpUpdateItems
execute unless block ~ ~ ~ minecraft:dropper{Items:[{id:"minecraft:stone_hoe",Slot:8b,tag:{Unbreakable:1b,battDisplay:1b}}]} run tag @s add tpUpdateItems
execute if entity @s[tag=tpUpdateItems] run function tpbattery:items
execute if entity @s[tag=tpUpdateItems] run clear @a[distance=..4] stone_hoe{Unbreakable:1b,display:{Name:"{\"text\":\"\"}"},battDisplay:1b} 1
execute if entity @s[tag=tpUpdateItems] run tag @s remove tpUpdateItems

# upgrades
tag @s remove tpUpgraded
execute if block ~ ~ ~ dropper{Items:[{id:"minecraft:stone_hoe",Slot:2b,tag:{Unbreakable:1b,Damage:6,Stackable:1b}}]} run tag @s add tpUpgraded

execute if entity @s[tag=tpUpgraded] store result score @s tpCraftCount3 run data get block ~ ~ ~ Items[2].tag.AttributeModifiers[0].Amount
execute if entity @s[tag=tpUpgraded] run scoreboard players operation @s tpCraftCount3 *= #5 tpE
execute if entity @s[tag=tpUpgraded] run scoreboard players set @s tpBattMax 15
execute if entity @s[tag=tpUpgraded] run scoreboard players operation @s tpBattMax += @s tpCraftCount3

execute if entity @s[tag=!tpUpgraded,scores={tpBattMax=16..}] if score @s tpE matches 16.. run scoreboard players set @s tpE 15
execute if entity @s[tag=!tpUpgraded,scores={tpBattMax=16..}] run scoreboard players set @s tpBattMax 15
