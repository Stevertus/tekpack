execute store result score @s stackId run data get entity @s Inventory[11].tag.id 1
execute if score @s stackId = @e[sort=nearest,type=item,limit=1,tag=picking] stackId run tag @s add pickup

execute as @s[tag=pickup] store result score @s Iamount run data get entity @s Inventory[11].tag.AttributeModifiers[0].Amount 1
execute as @s[tag=pickup] store result score @s ImaxStack run data get entity @s Inventory[11].tag.maxStack 1
execute as @s[tag=pickup] run scoreboard players operation @s Iamount += @e[sort=nearest,type=item,limit=1,tag=picking] Iamount

execute as @s[tag=pickup] if score @s Iamount > @s ImaxStack run tag @s add pickups

execute as @s[tag=pickups] store result entity @s Inventory[11].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get @s ImaxStack
execute as @s[tag=pickups] run scoreboard players operation @s Iamount -= @s ImaxStack
execute as @s[tag=pickups] store result entity @e[sort=nearest,type=item,limit=1,tag=picking] Item.tag.AttributeModifiers[0].Amount int 1 run scoreboard players get @s Iamount

execute as @s[tag=pickup,tag=!pickups] store result entity @s Inventory[11].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get @s Iamount
execute as @s[tag=pickup,tag=!pickups] run kill @e[sort=nearest,type=item,limit=1,tag=picking]

tag @s[tag=pickup] remove pickup
tag @s[tag=pickups] remove pickups