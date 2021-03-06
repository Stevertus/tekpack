#######
# Compiled from .//functions/hoppermain.mcscript
# to .//functions/hoppermain.mcfunction
#
# Generated by Minecraft Script for 1.13
######
execute if score #t tpTimer matches 2.. run tag @s[tag=tpFirstPower] remove tpFirstPower
execute if score #t tpTimer matches 2.. if score @e[tag=tpCable,distance=..1.1,limit=1] tpE matches 1.. if score @s tpE matches ..4 run tag @s add tpBreakAdd
execute if score #t tpTimer matches 2.. if entity @a[distance=..5] if score @s[tag=!tpPowered] tpE matches 1.. run particle minecraft:entity_effect ~ ~ ~ 0.5 0.1 0.5 20 1

execute if entity @s[tag=tpBreakAdd] run scoreboard players add @s tpE 1
execute if entity @s[tag=tpBreakAdd] run scoreboard players reset @e[tag=tpCable,distance=..1.1,limit=1,scores={tpE=1}] tpE
execute if entity @s[tag=tpBreakAdd] run scoreboard players remove @e[tag=tpCable,distance=..1.1,limit=1,scores={tpE=2..}] tpE 1
execute if entity @s[tag=tpBreakAdd] run tag @s remove tpBreakAdd

execute if entity @s[tag=!tpPowered] if score @s tpE matches 1.. if entity @e[type=item,distance=..4,tag=!tpHopperAttract] run scoreboard players remove @s tpE 1
execute if entity @s[tag=!tpPowered] if score @s tpE matches 1.. if entity @e[type=item,distance=..4,tag=!tpHopperAttract] run particle minecraft:instant_effect ~ ~1 ~
execute if entity @s[tag=!tpPowered] if score @s tpE matches 1.. if entity @e[type=item,distance=..4,tag=!tpHopperAttract] as @e[type=item,distance=..4,limit=1,sort=random] run tag @s add tpHopperAttractNew
execute if entity @s[tag=!tpPowered] if score @s tpE matches 1.. if entity @e[type=item,distance=..4,tag=!tpHopperAttract] as @e[type=item,distance=..4,limit=1,sort=random] run tag @s add tpHopperAttract

execute if entity @e[type=item,tag=tpHopperAttract,distance=..0.7] run tp @e[type=item,tag=tpHopperAttract,distance=..0.7] ~ ~0.5 ~
