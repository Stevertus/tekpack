execute anchored eyes positioned ^ ^ ^ if entity @e[limit=1,sort=nearest,tag=counted,scores={Iamount=2..}] run function stack:config/drop

execute anchored eyes positioned ^ ^ ^ as @e[type=item,tag=counted,sort=nearest,limit=1] run scoreboard players remove @s Iamount 1
execute anchored eyes positioned ^ ^ ^ store result entity @s SelectedItem.tag.AttributeModifiers[0].Amount int 1 run scoreboard players get @e[limit=1,sort=nearest,type=item,tag=counted] Iamount
execute anchored eyes positioned ^ ^ ^ run scoreboard players set @e[type=item,limit=1,sort=nearest,tag=counted] Iamount 1
execute anchored eyes positioned ^ ^ ^ store result entity @e[type=item,sort=nearest,limit=1,tag=counted] Item.tag.AttributeModifiers[0].Amount int 1 run scoreboard players get @e[type=item,sort=nearest,limit=1,tag=counted] Iamount
execute anchored eyes positioned ^ ^ ^ run tag @e[tag=counted,limit=1,sort=nearest,type=item] remove counted
