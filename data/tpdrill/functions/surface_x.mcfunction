#######
# Compiled from /tpdrill/functions/surface.mcscript
# to .//tpdrill/functions/surface_x.mcfunction
#
# Generated by Minecraft Script for 1.13
######
execute if score @s tpDrillTempX matches ..0 run function tpdrill:surface_z

scoreboard players remove @s tpDrillTempX 1
execute if score @s tpDrillTempZ matches 0.. positioned ~1 ~ ~ run function tpdrill:surface_x

