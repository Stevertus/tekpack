#######
# Compiled from .//functions/update_items.mcscript
# to .//functions/items.mcfunction
#
# Generated by Minecraft Script for 1.13
######
scoreboard players operation @s tpBattMulti = #15 tpE
scoreboard players operation @s tpBattMulti *= #100 tpE
scoreboard players operation @s tpBattMulti /= @s tpBattMax
scoreboard players operation @s tpEDisplay = @s tpE
scoreboard players operation @s tpEDisplay *= @s tpBattMulti
scoreboard players operation @s tpEDisplay /= #100 tpE
replaceitem block ~ ~ ~ container.0 minecraft:stone_hoe{display:{Name:"{\"text\":\"\"}"},HideFlags:6,CustomModelData:3390001,battDisplay:1b}
replaceitem block ~ ~ ~ container.1 minecraft:stone_hoe{display:{Name:"{\"text\":\"\"}"},HideFlags:6,CustomModelData:3390001,battDisplay:1b}
replaceitem block ~ ~ ~ container.3 minecraft:stone_hoe{display:{Name:"{\"text\":\"\"}"},HideFlags:6,CustomModelData:3390001,battDisplay:1b}
replaceitem block ~ ~ ~ container.4 minecraft:stone_hoe{display:{Name:"{\"text\":\"\"}"},HideFlags:6,CustomModelData:3390001,battDisplay:1b}
replaceitem block ~ ~ ~ container.5 minecraft:stone_hoe{display:{Name:"{\"text\":\"\"}"},HideFlags:6,CustomModelData:3390001,battDisplay:1b}
replaceitem block ~ ~ ~ container.6 minecraft:stone_hoe{display:{Name:"{\"text\":\"\"}"},HideFlags:6,CustomModelData:3390002,battDisplay:1b}
replaceitem block ~ ~ ~ container.7 minecraft:stone_hoe{display:{Name:"{\"text\":\"\"}"},HideFlags:6,CustomModelData:3390001,battDisplay:1b}
replaceitem block ~ ~ ~ container.8 minecraft:stone_hoe{display:{Name:"{\"text\":\"\"}"},HideFlags:6,CustomModelData:3390001,battDisplay:1b}
execute if score @s tpEDisplay matches 1 run replaceitem block ~ ~ ~ container.7 minecraft:stone_hoe{display:{Name:"{\"text\":\"\"}"},HideFlags:6,CustomModelData:3390003,battDisplay:1b}

execute if score @s tpEDisplay matches 2 run replaceitem block ~ ~ ~ container.7 minecraft:stone_hoe{display:{Name:"{\"text\":\"\"}"},HideFlags:6,CustomModelData:3390004,battDisplay:1b}

execute if score @s tpEDisplay matches 3 run replaceitem block ~ ~ ~ container.7 minecraft:stone_hoe{display:{Name:"{\"text\":\"\"}"},HideFlags:6,CustomModelData:3390005,battDisplay:1b}
execute if score @s tpEDisplay matches 4 run replaceitem block ~ ~ ~ container.7 minecraft:stone_hoe{display:{Name:"{\"text\":\"\"}"},HideFlags:6,CustomModelData:3390006,battDisplay:1b}
execute if score @s tpEDisplay matches 5.. run replaceitem block ~ ~ ~ container.7 minecraft:stone_hoe{display:{Name:"{\"text\":\"\"}"},HideFlags:6,CustomModelData:3390007,battDisplay:1b}

execute if score @s tpEDisplay matches 6 run replaceitem block ~ ~ ~ container.4 minecraft:stone_hoe{display:{Name:"{\"text\":\"\"}"},HideFlags:6,CustomModelData:3390003,battDisplay:1b}
execute if score @s tpEDisplay matches 7 run replaceitem block ~ ~ ~ container.4 minecraft:stone_hoe{display:{Name:"{\"text\":\"\"}"},HideFlags:6,CustomModelData:3390004,battDisplay:1b}
execute if score @s tpEDisplay matches 8 run replaceitem block ~ ~ ~ container.4 minecraft:stone_hoe{display:{Name:"{\"text\":\"\"}"},HideFlags:6,CustomModelData:3390005,battDisplay:1b}
execute if score @s tpEDisplay matches 9 run replaceitem block ~ ~ ~ container.4 minecraft:stone_hoe{display:{Name:"{\"text\":\"\"}"},HideFlags:6,CustomModelData:3390006,battDisplay:1b}
execute if score @s tpEDisplay matches 10.. run replaceitem block ~ ~ ~ container.4 minecraft:stone_hoe{display:{Name:"{\"text\":\"\"}"},HideFlags:6,CustomModelData:3390007,battDisplay:1b}

execute if score @s tpEDisplay matches 11 run replaceitem block ~ ~ ~ container.1 minecraft:stone_hoe{display:{Name:"{\"text\":\"\"}"},HideFlags:6,CustomModelData:3390003,battDisplay:1b}
execute if score @s tpEDisplay matches 12 run replaceitem block ~ ~ ~ container.1 minecraft:stone_hoe{display:{Name:"{\"text\":\"\"}"},HideFlags:6,CustomModelData:3390004,battDisplay:1b}
execute if score @s tpEDisplay matches 13 run replaceitem block ~ ~ ~ container.1 minecraft:stone_hoe{display:{Name:"{\"text\":\"\"}"},HideFlags:6,CustomModelData:3390005,battDisplay:1b}
execute if score @s tpEDisplay matches 14 run replaceitem block ~ ~ ~ container.1 minecraft:stone_hoe{display:{Name:"{\"text\":\"\"}"},HideFlags:6,CustomModelData:3390006,battDisplay:1b}
execute if score @s tpEDisplay matches 15.. run replaceitem block ~ ~ ~ container.1 minecraft:stone_hoe{display:{Name:"{\"text\":\"\"}"},HideFlags:6,CustomModelData:3390007,battDisplay:1b}
