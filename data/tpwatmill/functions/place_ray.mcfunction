#######
# Compiled from data/tpcables/functions/place.mcscript
# to data/tpcables/functions/mcscript/raycast1.mcfunction
#
# Generated by Minecraft Script for 1.13
######
#particle flame ~ ~ ~
scoreboard players add raycast1 mcscript_raycast 1
execute positioned ^ ^ ^0.5 unless block ~ ~ ~ air run tag @s add mcscriptStop
execute positioned ^ ^ ^0.5 if entity @s[tag=!mcscriptStop] if block ~ ~ ~ air if score raycast1 mcscript_raycast matches ..10 run function tpwatmill:place_ray
execute if score raycast1 mcscript_raycast matches ..10 if entity @s[tag=mcscriptStop] positioned ^ ^ ^0.5 run execute if block ^ ^ ^-0.8 air run tag @s remove tpRayFail
execute if score raycast1 mcscript_raycast matches ..10 if entity @s[tag=mcscriptStop] positioned ^ ^ ^-0.3 run execute if block ~ ~ ~ air run function tpwatmill:create
tag @s[tag=mcscriptStop] remove mcscriptStop
