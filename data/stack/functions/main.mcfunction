execute at @a as @e[tag=!counted,type=item,nbt={Item:{tag:{Stackable:1b}}},distance=..6] store result score @s Iamount run data get entity @s Item.tag.AttributeModifiers[0].Amount 1
execute at @a as @e[tag=!counted,type=item,nbt={Item:{tag:{Stackable:1b}}},distance=..6] store result score @s stackId run data get entity @s Item.tag.id 1
execute at @a as @e[tag=!counted,type=item,nbt={Item:{tag:{Stackable:1b}}},distance=..6] store result score @s ImaxStack run data get entity @s Item.tag.maxStack 1
execute at @a as @e[tag=!counted,type=item,nbt={Item:{tag:{Stackable:1b}}},distance=..6] run scoreboard players set @s Ipickup 1
execute at @a run tag @e[type=item,nbt={Item:{tag:{Stackable:1b}}},tag=!counted,distance=..6] add counted

execute at @a as @e[distance=..6,type=item,nbt={Item:{tag:{Stackable:1b}}}] run data merge entity @s {PickupDelay:10s}

execute at @a as @e[sort=nearest,type=item,tag=counted,distance=..0.5,scores={Ipickup=1..},limit=1,tag=picked] run scoreboard players remove @s Ipickup 1
execute as @a at @s unless entity @e[tag=picked,distance=..0.5] run tag @e[sort=random,type=item,tag=counted,distance=..0.5,limit=1] add picked
execute as @a at @s unless entity @e[tag=picking,distance=..0.5] run tag @e[sort=random,type=item,tag=counted,tag=picked,distance=..0.5,limit=1,scores={Ipickup=0}] add picking
execute as @a at @s if entity @e[sort=nearest,type=item,distance=..0.5,scores={Ipickup=0},limit=1,tag=picking] run function stack:pickups

execute at @a run scoreboard players add @e[type=item,tag=counted,distance=1..10,scores={Ipickup=..0}] Ipickup 1

execute as @a[scores={Idrop=1..,Isneak=0,Iid=1..}] at @s run function stack:drop

execute as @a[nbt={Inventory:[{Slot:-106b,tag:{Stackable:1b}}]},scores={Isneak=1..,splitdown=0}] run function stack:offhand

scoreboard players set @a[scores={Isneak=0}] splitdown 5

scoreboard players set @a[scores={Idrop=1..}] Idrop 0
scoreboard players set @a[scores={Isneak=1..}] Isneak 0

execute as @a store result score @s Iid run data get entity @s SelectedItem.tag.id

scoreboard players remove @a[scores={splitdown=1..}] splitdown 1






