#######
# Compiled from /tpbreaker/functions/breakmain.mcscript
# to .//tpbreaker/functions/breakmain.mcfunction
#
# Generated by Minecraft Script for 1.13
######
execute if score #t tpTimer matches 2.. run tag @s[tag=tpFirstPower] remove tpFirstPower
execute if score #t tpTimer matches 2.. if score @e[tag=tpCable,distance=..1.1,limit=1] tpE matches 1.. if score @s tpE matches ..14 run tag @s add tpBreakAdd

execute if entity @s[tag=tpBreakAdd] run scoreboard players add @s tpE 1
execute if entity @s[tag=tpBreakAdd] run particle minecraft:dust 0.2 1 0.2 0.8 ~ ~ ~ 0 0.1 0 10 10
execute if entity @s[tag=tpBreakAdd] run scoreboard players reset @e[tag=tpCable,distance=..1.1,limit=1,scores={tpE=1}] tpE
execute if entity @s[tag=tpBreakAdd] run scoreboard players remove @e[tag=tpCable,distance=..1.1,limit=1,scores={tpE=2..}] tpE 1
execute if entity @s[tag=tpBreakAdd] run tag @s remove tpBreakAdd

execute positioned ^ ^ ^1 if entity @s[tag=!tpPowered] if score @s tpTimer matches 100.. if score @s tpE matches 5.. unless block ~ ~ ~ #tpbreaker:undestroy run tag @s add tpBreakRemove
execute positioned ^ ^ ^1 if entity @s[tag=!tpPowered] if score @s tpTimer matches 100.. if score @s tpE matches 5.. if block ~ ~ ~ minecraft:wheat[age=7] run tag @s add tpBreakRemove
execute positioned ^ ^ ^1 if entity @s[tag=!tpPowered] if score @s tpTimer matches 100.. if score @s tpE matches 5.. if block ~ ~ ~ minecraft:carrots[age=7] run tag @s add tpBreakRemove
execute positioned ^ ^ ^1 if entity @s[tag=!tpPowered] if score @s tpTimer matches 100.. if score @s tpE matches 5.. if block ~ ~ ~ minecraft:potatoes[age=7] run tag @s add tpBreakRemove
execute positioned ^ ^ ^1 if entity @s[tag=!tpPowered] if score @s tpTimer matches 100.. if score @s tpE matches 5.. if block ~ ~ ~ minecraft:beetroots[age=3] run tag @s add tpBreakRemove
execute if entity @s[tag=tpBreakRemove] run setblock ^ ^ ^1 air destroy
execute if entity @s[tag=tpBreakRemove] run scoreboard players remove @s tpE 5
execute if entity @s[tag=tpBreakRemove] run tag @s remove tpBreakRemove

execute if entity @a[distance=..2] if score @s tpE matches 0 run title @a[distance=..2] actionbar ["",{"text":"","color":"green"},{"text":"▌▌▌▌▌▌▌▌▌▌▌▌▌▌▌  ","color":"gray"},{"text":"(","color":"gray"},{"score":{"name":"@s","objective":"tpE"},"color":"gray"},{"text":" of 15","color":"gray"},{"text":")","color":"gray"}]
execute if entity @a[distance=..2] if score @s tpE matches 1 run title @a[distance=..2] actionbar ["",{"text":"▌","color":"green"},{"text":"▌▌▌▌▌▌▌▌▌▌▌▌▌▌  ","color":"gray"},{"text":"(","color":"gray"},{"score":{"name":"@s","objective":"tpE"},"color":"gray"},{"text":" of 15","color":"gray"},{"text":")","color":"gray"}]
execute if entity @a[distance=..2] if score @s tpE matches 2 run title @a[distance=..2] actionbar ["",{"text":"▌▌","color":"green"},{"text":"▌▌▌▌▌▌▌▌▌▌▌▌▌  ","color":"gray"},{"text":"(","color":"gray"},{"score":{"name":"@s","objective":"tpE"},"color":"gray"},{"text":" of 15","color":"gray"},{"text":")","color":"gray"}]
execute if entity @a[distance=..2] if score @s tpE matches 3 run title @a[distance=..2] actionbar ["",{"text":"▌▌▌","color":"green"},{"text":"▌▌▌▌▌▌▌▌▌▌▌▌  ","color":"gray"},{"text":"(","color":"gray"},{"score":{"name":"@s","objective":"tpE"},"color":"gray"},{"text":" of 15","color":"gray"},{"text":")","color":"gray"}]
execute if entity @a[distance=..2] if score @s tpE matches 4 run title @a[distance=..2] actionbar ["",{"text":"▌▌▌▌","color":"green"},{"text":"▌▌▌▌▌▌▌▌▌▌▌  ","color":"gray"},{"text":"(","color":"gray"},{"score":{"name":"@s","objective":"tpE"},"color":"gray"},{"text":" of 15","color":"gray"},{"text":")","color":"gray"}]
execute if entity @a[distance=..2] if score @s tpE matches 5 run title @a[distance=..2] actionbar ["",{"text":"▌▌▌▌▌","color":"green"},{"text":"▌▌▌▌▌▌▌▌▌▌  ","color":"gray"},{"text":"(","color":"gray"},{"score":{"name":"@s","objective":"tpE"},"color":"gray"},{"text":" of 15","color":"gray"},{"text":")","color":"gray"}]
execute if entity @a[distance=..2] if score @s tpE matches 6 run title @a[distance=..2] actionbar ["",{"text":"▌▌▌▌▌▌","color":"green"},{"text":"▌▌▌▌▌▌▌▌▌  ","color":"gray"},{"text":"(","color":"gray"},{"score":{"name":"@s","objective":"tpE"},"color":"gray"},{"text":" of 15","color":"gray"},{"text":")","color":"gray"}]
execute if entity @a[distance=..2] if score @s tpE matches 7 run title @a[distance=..2] actionbar ["",{"text":"▌▌▌▌▌▌▌","color":"green"},{"text":"▌▌▌▌▌▌▌▌  ","color":"gray"},{"text":"(","color":"gray"},{"score":{"name":"@s","objective":"tpE"},"color":"gray"},{"text":" of 15","color":"gray"},{"text":")","color":"gray"}]
execute if entity @a[distance=..2] if score @s tpE matches 8 run title @a[distance=..2] actionbar ["",{"text":"▌▌▌▌▌▌▌▌","color":"green"},{"text":"▌▌▌▌▌▌▌  ","color":"gray"},{"text":"(","color":"gray"},{"score":{"name":"@s","objective":"tpE"},"color":"gray"},{"text":" of 15","color":"gray"},{"text":")","color":"gray"}]
execute if entity @a[distance=..2] if score @s tpE matches 9 run title @a[distance=..2] actionbar ["",{"text":"▌▌▌▌▌▌▌▌▌","color":"green"},{"text":"▌▌▌▌▌▌  ","color":"gray"},{"text":"(","color":"gray"},{"score":{"name":"@s","objective":"tpE"},"color":"gray"},{"text":" of 15","color":"gray"},{"text":")","color":"gray"}]
execute if entity @a[distance=..2] if score @s tpE matches 10 run title @a[distance=..2] actionbar ["",{"text":"▌▌▌▌▌▌▌▌","color":"green"},{"text":"▌▌▌▌▌  ","color":"gray"},{"text":"(","color":"gray"},{"score":{"name":"@s","objective":"tpE"},"color":"gray"},{"text":" of 15","color":"gray"},{"text":")","color":"gray"}]
execute if entity @a[distance=..2] if score @s tpE matches 11 run title @a[distance=..2] actionbar ["",{"text":"▌▌▌▌▌▌▌▌▌","color":"green"},{"text":"▌▌▌▌  ","color":"gray"},{"text":"(","color":"gray"},{"score":{"name":"@s","objective":"tpE"},"color":"gray"},{"text":" of 15","color":"gray"},{"text":")","color":"gray"}]
execute if entity @a[distance=..2] if score @s tpE matches 12 run title @a[distance=..2] actionbar ["",{"text":"▌▌▌▌▌▌▌▌▌▌","color":"green"},{"text":"▌▌▌  ","color":"gray"},{"text":"(","color":"gray"},{"score":{"name":"@s","objective":"tpE"},"color":"gray"},{"text":" of 15","color":"gray"},{"text":")","color":"gray"}]
execute if entity @a[distance=..2] if score @s tpE matches 13 run title @a[distance=..2] actionbar ["",{"text":"▌▌▌▌▌▌▌▌▌▌▌","color":"green"},{"text":"▌▌  ","color":"gray"},{"text":"(","color":"gray"},{"score":{"name":"@s","objective":"tpE"},"color":"gray"},{"text":" of 15","color":"gray"},{"text":")","color":"gray"}]
execute if entity @a[distance=..2] if score @s tpE matches 14 run title @a[distance=..2] actionbar ["",{"text":"▌▌▌▌▌▌▌▌▌▌▌▌","color":"green"},{"text":"▌  ","color":"gray"},{"text":"(","color":"gray"},{"score":{"name":"@s","objective":"tpE"},"color":"gray"},{"text":" of 15","color":"gray"},{"text":")","color":"gray"}]
execute if entity @a[distance=..2] if score @s tpE matches 15 run title @a[distance=..2] actionbar ["",{"text":"▌▌▌▌▌▌▌▌▌▌▌▌▌▌▌  ","color":"green"},{"text":"(","color":"gray"},{"score":{"name":"@s","objective":"tpE"},"color":"gray"},{"text":" of 15","color":"gray"},{"text":")","color":"gray"}]