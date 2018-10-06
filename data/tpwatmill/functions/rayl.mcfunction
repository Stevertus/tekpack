
scoreboard players add @s tpMillY 1
scoreboard players remove @s tpDrillTempX 1
execute unless block ~ ~ ~ water[level=8] run tag @s add mcscriptStop
execute positioned ~ ~1 ~ if entity @s[tag=!mcscriptStop] if block ~ ~ ~ water if score @s tpMillY matches ..99 run function tpwatmill:rayl
tag @s[tag=mcscriptStop] remove mcscriptStop
