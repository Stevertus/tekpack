#######
# Compiled from .//functions/surface.mcscript
# to .//functions/surface_z.mcfunction
#
# Generated by Minecraft Script for 1.13
######
execute if score @s tpDrillTempZ matches ..0 run function tpdrill:surface_break

scoreboard players remove @s tpDrillTempZ 1
execute if score @s tpDrillTempZ matches 0.. positioned ~ ~ ~1 run function tpdrill:surface_z

