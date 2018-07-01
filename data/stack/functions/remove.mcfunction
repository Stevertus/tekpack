execute anchored eyes positioned ^ ^ ^ store result score @s Iamount run data get entity @s SelectedItem.tag.AttributeModifiers[0].Amount

execute anchored eyes positioned ^ ^ ^ if entity @s[scores={Iamount=2..}] run function stack:config/drop

scoreboard players remove @s Iamount 1
execute anchored eyes positioned ^ ^ ^ store result entity @s SelectedItem.tag.AttributeModifiers[0].Amount int 1 run scoreboard players get @s Iamount
execute anchored eyes positioned ^ ^ ^ if entity @s[scores={Iamount=..0}] run replaceitem entity @s weapon.mainhand air
