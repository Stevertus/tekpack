#######
# Compiled from .//functions/beltmain.mcscript
# to .//functions/beltmain.mcfunction
#
# Generated by Minecraft Script for 1.13
######
tag @e[type=item,distance=0.01..0.75,tag=!tpBeltItem] add tpBeltItem
execute as @s[tag=tpBeltN] positioned ~ ~ ~-0.35 as @e[type=!player,tag=!tpBeltMove,distance=0.01..0.75] at @s run data modify entity @s Motion[2] set value -0.08
execute as @s[tag=tpBeltN] positioned ~ ~ ~-0.4 as @a[distance=0.01..0.75] at @s run tp @s ~ ~ ~-0.07
execute as @s[tag=tpBeltUp] positioned ^ ^ ^0.35 as @e[type=!player,tag=!tpBelt,distance=0.01..0.75] at @s run data modify entity @s Motion[1] set value 0.1
execute as @s[tag=tpBeltUp] positioned ^ ^ ^0.5 as @a[distance=0.01..0.3] at @s run tp @s ~ ~0.75 ~
execute as @s[tag=tpBeltS] positioned ~ ~ ~0.35 as @e[type=!player,tag=!tpBeltMove,distance=0.01..0.75] at @s run data modify entity @s Motion[2] set value 0.08
execute as @s[tag=tpBeltS] positioned ~ ~ ~0.4 as @a[distance=0.01..0.75] at @s run tp @s ~ ~ ~0.07
execute as @s[tag=tpBeltW] positioned ~-0.35 ~ ~ as @e[type=!player,tag=!tpBeltMove,distance=0.01..0.75] at @s run data modify entity @s Motion[0] set value -0.08
execute as @s[tag=tpBeltW] positioned ~-0.4 ~ ~ as @a[distance=0.01..0.75] at @s run tp @s ~-0.07 ~ ~
execute as @s[tag=tpBeltE] positioned ~0.35 ~ ~ as @e[type=!player,tag=!tpBeltMove,distance=0.01..0.75] at @s run data modify entity @s Motion[0] set value 0.08
execute as @s[tag=tpBeltE] positioned ~0.4 ~ ~ as @a[distance=0.01..0.75] at @s run tp @s ~0.07 ~ ~