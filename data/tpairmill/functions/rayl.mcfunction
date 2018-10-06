
scoreboard players add @s tpMillY 1
scoreboard players remove @s tpDrillTempX 1
execute positioned ~1 ~-1 ~ unless block ~ ~ ~ air run tag @s add mcscriptStop
execute positioned ~-1 ~-1 ~ unless block ~ ~ ~ air run tag @s add mcscriptStop
execute positioned ~ ~-1 ~1 unless block ~ ~ ~ air run tag @s add mcscriptStop
execute positioned ~ ~-1 ~-1 unless block ~ ~ ~ air run tag @s add mcscriptStop
execute positioned ~1 ~-1 ~1 unless block ~ ~ ~ air run tag @s add mcscriptStop
execute positioned ~-1 ~-1 ~1 unless block ~ ~ ~ air run tag @s add mcscriptStop
execute positioned ~1 ~-1 ~-1 unless block ~ ~ ~ air run tag @s add mcscriptStop
execute positioned ~-1 ~-1 ~-1 unless block ~ ~ ~ air run tag @s add mcscriptStop

execute positioned ~2 ~-1 ~ unless block ~ ~ ~ air run tag @s add mcscriptStop
execute positioned ~-2 ~-1 ~ unless block ~ ~ ~ air run tag @s add mcscriptStop
execute positioned ~ ~-1 ~2 unless block ~ ~ ~ air run tag @s add mcscriptStop
execute positioned ~ ~-1 ~-2 unless block ~ ~ ~ air run tag @s add mcscriptStop
tag @s[scores={tpDrillTempX=..60}] add mcscriptStop
execute positioned ~ ~-1 ~ if entity @s[tag=!mcscriptStop] if score @s tpMillY matches ..149 run function tpairmill:rayl
tag @s[tag=mcscriptStop] remove mcscriptStop
