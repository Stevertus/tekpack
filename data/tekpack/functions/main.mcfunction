#######
# Compiled from /tekpack/functions/main.mcscript
# to .//tekpack/functions/main.mcfunction
#
# Generated by Minecraft Script for 1.13
######
scoreboard players add #t tpTimer 1
scoreboard players add #tt tpTimer 1
function tpcables:main
function tpcraft:main
function tpbattery:main
function tpsolar:main
function stack:main
execute if score #t tpTimer matches 2.. run scoreboard players reset #t tpTimer

execute if score #tt tpTimer matches 200.. run scoreboard players reset #tt tpTimer