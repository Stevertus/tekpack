#######
# Compiled from .//functions/main.mcscript
# to .//functions/main.mcfunction
#
# Generated by Minecraft Script for 1.13
######
execute as @e[tag=tpBelt] at @s if block ~ ~ ~ air run summon minecraft:item ~ ~0.5 ~ {Item:{id:"minecraft:firework_rocket",Count:1,tag:{CustomModelData:3390019,isTekPack:1,HideFlags:6,display:{Name:"{\"text\":\"Conveyor Belt\",\"italic\":false,\"color\":\"green\"}"},Fireworks:{}}}}
execute as @e[tag=tpBelt] at @s if block ~ ~ ~ air run kill @e[type=item,distance=..0.8,nbt={Item:{id:"minecraft:snowball"}}]
execute as @e[tag=tpBelt] at @s if block ~ ~ ~ air if entity @s[tag=tpBeltUpUpper] positioned ^ ^-0.5 ^-1 as @e[tag=tpBeltUpLower,distance=..0.75] at @s run tp @s ~ ~0.49 ~
execute as @e[tag=tpBelt] at @s if block ~ ~ ~ air if entity @s[tag=tpBeltUpUpper] positioned ^ ^-0.5 ^-1 as @e[tag=tpBeltUpLower,distance=..0.75] at @s run replaceitem entity @s armor.head minecraft:firework_rocket{CustomModelData:3390019}
execute as @e[tag=tpBelt] at @s if block ~ ~ ~ air if entity @s[tag=tpBeltUpUpper] positioned ^ ^-0.5 ^-1 as @e[tag=tpBeltUpLower,distance=..0.75] at @s run tag @s remove tpBeltUp
execute as @e[tag=tpBelt] at @s if block ~ ~ ~ air if entity @s[tag=tpBeltUpUpper] positioned ^ ^-0.5 ^-1 as @e[tag=tpBeltUpLower,distance=..0.75] at @s run tag @s remove tpBeltUpLower
execute as @e[tag=tpBelt] at @s if block ~ ~ ~ air run kill @s
execute as @e[tag=tpBelt] at @s run scoreboard players add @s tpTimer 1
execute as @e[tag=tpBelt] at @s run function tpwatmill:powered
execute as @e[type=item,tag=tpBeltItem] run scoreboard players remove @s tpTimer 1
execute as @e[type=item,tag=tpBeltItem,scores={tpTimer=..1}] run data merge entity @s {PickupDelay:90,Age:1}
execute as @e[type=item,tag=tpBeltItem,scores={tpTimer=..1}] run scoreboard players set @s tpTimer 100
execute as @e[tag=tpBeltMove] at @s run function tpbelt:beltmain