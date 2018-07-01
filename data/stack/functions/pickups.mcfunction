execute store result score @s inv run data get entity @s Inventory
scoreboard players remove @s[nbt={Inventory:[{Slot:100b}]}] inv 1
scoreboard players remove @s[nbt={Inventory:[{Slot:101b}]}] inv 1
scoreboard players remove @s[nbt={Inventory:[{Slot:102b}]}] inv 1
scoreboard players remove @s[nbt={Inventory:[{Slot:103b}]}] inv 1
scoreboard players remove @s[nbt={Inventory:[{Slot:-106b}]}] inv 1

execute as @s[scores={inv=1..}] run function stack:pickup1
execute as @s[scores={inv=2..}] run function stack:pickup2
execute as @s[scores={inv=3..}] run function stack:pickup3
execute as @s[scores={inv=4..}] run function stack:pickup4
execute as @s[scores={inv=5..}] run function stack:pickup5
execute as @s[scores={inv=6..}] run function stack:pickup6
execute as @s[scores={inv=7..}] run function stack:pickup7
execute as @s[scores={inv=8..}] run function stack:pickup8
execute as @s[scores={inv=9..}] run function stack:pickup9
execute as @s[scores={inv=10..}] run function stack:pickup10
execute as @s[scores={inv=11..}] run function stack:pickup11
execute as @s[scores={inv=12..}] run function stack:pickup12
execute as @s[scores={inv=13..}] run function stack:pickup13
execute as @s[scores={inv=14..}] run function stack:pickup14
execute as @s[scores={inv=15..}] run function stack:pickup15
execute as @s[scores={inv=16..}] run function stack:pickup16
execute as @s[scores={inv=17..}] run function stack:pickup17
execute as @s[scores={inv=18..}] run function stack:pickup18
execute as @s[scores={inv=19..}] run function stack:pickup19
execute as @s[scores={inv=20..}] run function stack:pickup20
execute as @s[scores={inv=21..}] run function stack:pickup21
execute as @s[scores={inv=22..}] run function stack:pickup22
execute as @s[scores={inv=23..}] run function stack:pickup23
execute as @s[scores={inv=24..}] run function stack:pickup24
execute as @s[scores={inv=25..}] run function stack:pickup25
execute as @s[scores={inv=26..}] run function stack:pickup26
execute as @s[scores={inv=27..}] run function stack:pickup27
execute as @s[scores={inv=28..}] run function stack:pickup28
execute as @s[scores={inv=29..}] run function stack:pickup29
execute as @s[scores={inv=30..}] run function stack:pickup30
execute as @s[scores={inv=31..}] run function stack:pickup31
execute as @s[scores={inv=32..}] run function stack:pickup32
execute as @s[scores={inv=33..}] run function stack:pickup33
execute as @s[scores={inv=34..}] run function stack:pickup34
execute as @s[scores={inv=35..}] run function stack:pickup35
execute as @s[scores={inv=36}] run function stack:pickup36

execute as @s[scores={inv=..35}] store result score @s stackId run data get entity @e[type=item,tag=picking,distance=..0.5,limit=1] Item.tag.id 1
execute as @s[scores={inv=..35}] if entity @e[type=item,tag=picking,distance=..0.5] run function stack:config/ids
execute as @s[scores={inv=..35}] store result score @e[type=item,tag=picking,distance=..0.5] Iamount run data get entity @e[type=item,tag=picking,distance=..0.5,limit=1] Item.tag.AttributeModifiers[0].Amount 1
execute as @s[scores={inv=..35}] run scoreboard players remove @e[type=item,tag=picking,distance=..0.5] Iamount 1
execute as @s[scores={inv=..35}] store result entity @e[type=item,tag=picking,distance=..0.5,limit=1] Item.tag.AttributeModifiers[0].Amount int 1 run scoreboard players get @e[type=item,tag=picking,distance=..0.5,limit=1] Iamount
execute as @s[scores={inv=..35}] run kill @e[type=item,tag=picking,distance=..0.5,scores={Iamount=0}]

execute unless entity @e[tag=picking,sort=nearest,distance=..0.5] run playsound minecraft:ui.button.click ambient @s ~ ~ ~ 0.1 1

tag @e[type=item,distance=..0.5,tag=picking] remove counted
tag @e[type=item,distance=..0.5,tag=picking] remove picking